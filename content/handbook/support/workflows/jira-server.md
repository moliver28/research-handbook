---
title: Jira with GitLab
description: This guide provides steps to set up a Jira and troubleshooting steps from a Support Engineer's perspective
category: Self-managed
---

### What is Jira

Jira is a work management tool for software teams that need to organize and track their work. Jira has recently pushed for migration to the [Atlassian Cloud](https://developer.atlassian.com/cloud/jira/platform/). Jira no longer offers support for [Jira Server](https://www.atlassian.com/blog/announcements/farewell-to-server) and only offers the option of the [Jira Software Data Center](https://www.atlassian.com/enterprise/data-center/jira) for on-premises customers. 

For more information about various uses of Jira Please check out the [Get started with Jira Software](https://www.atlassian.com/software/jira/guides/getting-started/basics)

### Set Up Jira Server

#### Steps

1. Create a server from the [Support-resources](https://gitlab.com/gitlab-com/support/support-resources/). Using the [basic server](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/examples/basic-server.tf?ref_type=heads) will ensure nothing is using port 443. We will set up Jira to use HTTPS for GitLab integration.
1. Disable Apache if using the basic server image
   
   ```bash
   systemctl stop apache2
   systemctl disable apache2
   ```
1. [Install Java](https://confluence.atlassian.com/adminjiraserver/installing-java-938846828.html). Check the appropriate version of [supported platforms](https://confluence.atlassian.com/adminjiraserver0822/supported-platforms-1142236965.html) to install the correct version. 

   ```bash
   apt install openjdk-11-jdk  openjdk-11-jre
   ```

1. Install certbot and python3-certbot-apache to generate certificates for HTTPS
   
   ```bash
   sudo apt-get update && apt-get upgrade
   sudo apt-get install certbot
   sudo apt-get install python3-certbot-apache
   ```

1. [Generate SSL certificate using certbot](#create-ssltls-certificate-for-https)
1. [Convert keypair and certificate to Java Keystore](#convert-keypair-and-certificate-to-java-keystore)
1. [Install Jira](#install-jira)
1. [Configure Jira access through port 443](#configure-jira-to-use-port-443)
1. [Set up Jira](#set-up-jira)

#### Create SSL/TLS certificate for HTTPS

NOTE:
HTTPS connection is **required** for DVCS Connector

1. Generate a certificate for your domain. Input your e-mail when prompted.

   ```bash
   sudo certbot certonly --standalone -d <your-domain-name>
   ```

   ![Jira certbot](../assets/Jira_certbot_successful.png)

1. A new SSL will be issued at /etc/letsencrypt/live/<your-domain-name>. Navigate to the directory and view the files.

   ```bash
   cd /etc/letsencrypt/live/example.com
   ls
   ```

   You should be able to see the following list:

   - cert.pem
   - chain.pem
   - fullchain.pem
   - privkey.pem

#### Convert keypair and certificate to Java Keystore

NOTE:
Substitute <your-domain-name> with the domain name for your jira instance.

1. Create a PKCS12 that contains both your full chain and the private key. You need to have OpenSSL installed for that.

   ```text
   openssl pkcs12 -export -out /tmp/<your-domain-name>.p12 \
      -in /etc/letsencrypt/live/<your-domain-name>/fullchain.pem \
      -inkey /etc/letsencrypt/live/<your-domain-name>/privkey.pem \
      -name tomcat
   ```

   Replace the values accordingly. For `name`, we put it `tomcat` you may change the alias to anything you like but please remember this name.

1. Now convert your `.p12` file to a `.jks` file with the command below. Replace `<your-domain-name>` with your domain name, and `<password>` with the password you used to generate your `.p12` file:

   ```bash
   keytool -importkeystore \
   -deststorepass <password> -destkeypass <password> -destkeystore /tmp/<your-domain-name>.jks \
   -srckeystore /tmp/<your-domain-name>.p12  -srcstoretype PKCS12 -srcstorepass <password> \
   -alias tomcat
   ```
#### Install Jira

NOTE:
   We will be using the  Jira 8.13 version so that we can test all supported GitLab integrations. However, this will not work for OAuth2.0  integration so we will later upgrade Jira to test the connection. Substitute the following commands as appropriate for your installation verison. 

1. Create a folder to store Jira software for installation.

   ```bash
   mkdir  jira && cd jira
   ```

1. Choose the version of Jira that you want to download from [Atlassian Jira Website](https://www.atlassian.com/software/jira/update).

1. Select the Jira version that you want to download.

   ![Download Jira Screenshot](../assets/JIRA_1_Download.png)

1. Accept and right-click submit button to get the download URL. (Choose copy link address during the file download)

1. Use `wget <URL>` command to download the Jira installer. Example:

   ```bash
   wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-8.13.7-x64.bin
   ```

   ![wget data](../assets/Jira_wget.png)

1. Change the script to be executable using

   ```bash
   chmod a+x atlassian-jira-software-8.13.7-x64.bin
   ```

1. Run the installer and enter Y if it requests you to install OpenJDK.

   ```bash
   sudo ./atlassian-jira-software-8.13.7-x64.bin
   ```

   ![Jira bin](../assets/Jira_bin.png)

1. Follow the installation instructions and enter default for all questions asked in the installation.

   ![Jira bin process](../assets/Jira_bin_process.png)

1. Jira will be accessible via localhost:8080 (HTTP)

   ```bash
   lsof -i :8080
   COMMAND  PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
   java    9324 jira  165u  IPv6  75803      0t0  TCP *:http-alt (LISTEN)
   ```
 
[HTTPS must be enabled](#configure-jira-to-use-port-443) for the DVCS connector to work. 

#### Configure Jira to use port 443

1. Copy the [generated JKS file](#convert-keypair-and-certificate-to-java-keystore) to /opt/atlassian/jira/conf

   ```bash
   cp /tmp/<your-domain-name>.jks  /opt/atlassian/jira/conf/
   ```

1. Change directory to `/opt/atlassian/jira/conf/` and edit the `server.xml`. Back up `server.xml` before making changes.

   ```bash
   cd /opt/atlassian/jira/conf
   cp server.xml server_backup.xml
   vim server.xml
   ```

1. Comment out to disable HTTP.

   ```xml
    <!--
           <Connector port="8080" relaxedPathChars="[]|" relaxedQueryChars="[]|{}^&#x5c;&#x60;&quot;&lt;&gt;"
                      maxThreads="150" minSpareThreads="25" connectionTimeout="20000" enableLookups="false"
                      maxHttpHeaderSize="8192" protocol="HTTP/1.1" useBodyEncodingForURI="true" redirectPort="8443"
                      acceptCount="100" disableUploadTimeout="true" bindOnInit="false"/>
            -->
   ```

1. Add the following just before the closure of the `</Service>` block in `server.xml`

   ```xml
   <Connector port="443" protocol="org.apache.coyote.http11.Http11NioProtocol"
                 maxHttpHeaderSize="8192" SSLEnabled="true"
                 maxThreads="150" minSpareThreads="25"
                 enableLookups="false" disableUploadTimeout="true"
                 acceptCount="100" scheme="https" secure="true"
                 sslEnabledProtocols="TLSv1.2,TLSv1.3"
           clientAuth="false" useBodyEncodingForURI="true"
           relaxedPathChars="[]|" relaxedQueryChars="[]|{}^&#x5c;&#x60;&quot;&lt;&gt;"
                 keyAlias="tomcat" keystoreFile="conf/<your-domain-name>.jks" keystorePass="Jira_PASSWORD" keystoreType="JKS" />
   ```

   Replace the values for your `keyAlias`, `keystoreFile` and `keystrokePass` accordingly.

1. Edit the `web.xml` in conf folder and add the following so that all requests will be handled using the HTTPS. Again, before editing your `web.xml` file, consider backing it up first, just in case you need to quickly roll back.

   ```bash
   cd /opt/atlassian/jira/conf
   cp web.xml web_backup.xml
   vim web.xml
   ```

   Add the following lines right after the `<web-app ... version="X.X">` tag:

   ```xml
   <security-constraint>
     <web-resource-collection>
       <web-resource-name>all-except-attachments</web-resource-name>
       <url-pattern>*.jsp</url-pattern>
       <url-pattern>*.jspa</url-pattern>
       <url-pattern>/browse/*</url-pattern>
       <url-pattern>/issues/*</url-pattern>
    </web-resource-collection>
     <user-data-constraint>
       <transport-guarantee>CONFIDENTIAL</transport-guarantee>
     </user-data-constraint>
   </security-constraint>
   ```

1. **Optional**: [Specify Jira home directory](https://confluence.atlassian.com/adminjiraserver/setting-your-jira-application-home-directory-938847747.html) if it is not at default location:

   ```bash
   vim <installation-directory>/atlassian-jira/WEB-INF/classes/jira-application.properties
   jira.home = /PATH/TO/JIRA-HOME
   ```

1. Restart tomcat and check if the site is available in HTTPS. If you can't find a service with the name tomcat, restart the jira service:

   ```bash
   systemctl status jira
   systemctl restart jira
   systemctl status jira
   ```

   **NOTE:**
   HTTPS port might not be accessible after you restart tomcat.  Run the following command to enable port and apply settings:

   ```bash
   echo 'net.ipv4.ip_unprivileged_port_start=0' > /etc/sysctl.d/50-unprivileged-ports.conf
   sysctl --system
   ```

1. The site should now be available as a HTTPs address. Use the credentials you used to configure to now log in.

   **NOTE:**
   If you still can't access the site using HTTPS, check the permissions of your `/opt/atlassian/jira/conf/<your-domanin-name>.jks` file. Every user should be able to at least read the file. Replace `<your-domain-name>` with your domain name.

   ```bash
   ll /opt/atlassian/jira/conf/<your-domanin-name>.jks

   #If you need to change permissions, set it to at least 444 and restart the jira service
   chmod 444 /opt/atlassian/jira/conf/<your-domanin-name>.jks

   #Restart the jira service for changes to take effect
   systemctl status jira
   systemctl restart jira
   systemctl status jira
   ```
   
#### Set Up Jira

1. You will have to set up Jira before using it. After you access from the browser, Select `I’II set it up myself`.

   ![Jira Set It Up Myself Screenshot](../assets/JIRA_Setupmyself.png)

1. In the next step, select `Built-in (for evaluation or demonstration)`.

   ![Jira Database setup](../assets/Jira_db_setup.png)

1. While waiting for the database to be created,  login to your atlassian account and open [https://my.atlassian.com/product](https://my.atlassian.com/product) .  Generate a license trial license for your server.

   ![Jira Licenses](../assets/Jira_licenses.png)

1. On the next page, select `Jira Software` for Product and  `Jira Software (Data Center)` for License type.  Enter any details for the remaining fields.  For `Server ID`, you will get it when the server finishes setting up the database.

   ![Jira License Setup](../assets/Jira_license_setup.png)

1. After the database creation is complete, the next section will be setting application properties. Leave it as default and click `Next`.

   ![Jira Application Propertpplication_properties.png

1. In the next scene, specify your license Key.  Copy the `Server ID` and paste it to the `New trial License Generation` screen and click on `Generate License`.

   ![Jira Generate License](../assets/Jira_generate_license.png)

1. Copy and paste the license key generated and update license in your Jira setup.

   ![Jira License Atlassian](../assets/Jira_license_atlassian.png)

   ![Jira Specify License](../assets/Jira_specify_license.png)

1. Create a Jira Admin user and continue with the next steps.
1. Continue with the setup and create a test project.  “GITLAB”.
1. Create a test issue that we will be using to test with.

### Server Setup Troubleshooting

#### Problem binding to port 80: Could not bind to IPv4 or IPv6

In case you get a `Problem binding to port 80: Could not bind to IPv4 or IPv6.` error, check the PID of the application using port 80 then stop the application running on that port and retry generating the certificates.

![Error Message: Problem binding to port 80: Could not bind to IPv4 or IPv6.](../assets/Jira_port80error.png)

```bash
# Check with lsof
lsof -i :80

# You can also use
netstat -antlup | grep 80

# If it's Apache, you can run the following:
systemctl stop apache2
systemctl disable apache2
```

### Common Troubleshooting Steps for Jira tickets

1. Please check out the common known errors listed in our documentation: [Jira - Troubleshooting](https://docs.gitlab.com/ee/integration/jira/#troubleshooting) and [Troubleshooting your DVCS connection](https://docs.gitlab.com/ee/integration/jira/dvcs.html#troubleshooting-your-dvcs-connection)
1. Clarify with customers with integration they are referring to - we have GitLab Jira Integration and Jira Development Panel integration.
1. It is also helpful to get their Jira version - particularly: Cloud or Server? Is Server which version? (Note: 8.14 later [links differently](https://confluence.atlassian.com/adminjiraserver/linking-gitlab-accounts-1027142272.html))
1. Check their configuration, walk through the steps.
   **NOTE**:
   Some customers confused the configuration of the two integrations, for example using the `jira` user created in GitLab Jira Integration as the Term/Account for setting up DVCS account for their Jira Development Panel. This will load the repo of the `jira` user’s personal namespace which usually has 0 repos.
1. If all the configurations are correct, we might need to get the logs depending on where the error is occurring, they might need to check the [log files on Jira](https://confluence.atlassian.com/jirakb/useful-log-files-in-jira-1027120387.html ), they can `tail JIRA_HOME/log/atlassian-jira.log` while reproducing the error. If it's `Jira DVCS connection has wrong oauth scope: Issue when integrating with Jira DVCS`, check out [the workaround](https://docs.gitlab.com/ee/integration/jira/dvcs.html#scope-error-when-connecting-jira-via-dvcs).
1. We also have a list of useful [Rails cheat code](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/administration/troubleshooting/gitlab_rails_cheat_sheet.md#bulk-update-to-change-all-the-jira-integrations-to-jira-instance-level-values), this is handy when we need to check the values of the Jira configurations on GitLab.
