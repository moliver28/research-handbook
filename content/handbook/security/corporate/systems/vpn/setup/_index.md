---
title: Laptop VPN Setup Guide
---

## Access Request

Please open an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new) and add `/label ~"corpsec-metric::ar"`.

## NordLayer Installation

After your access request is provisioned, you will receive an email from `nordlayer@nordlayer.com` with a link to download the application.

- MacOS:

  1. Enter `gitlab` as the organization.
  2. Authenticate with Okta.
  3. When prompted, select to **Allow** an upcoming prompt.

- Linux:

  1. Follow https://help.nordlayer.com/docs/installing-on-linux to download the application and add your user to the user group.
  1. Log out and log back in.
  1. In your terminal, run `nordlayer login`.
  1. Enter `gitlab` as the organization.
  1. Open the URL you get in your browser and authenticate with Okta.

- Android:

  1. Go to Google Play and search for NordLayer. Tap Install and download the app.
  1. Enter `gitlab` as the organization ID and tap `continue`.
  1. Tap `Log in with Okta` and follow the prompts.
  1. Tap `Allow access` to allow NordLayer access to your VPN settings.
  1. Tap `Ok` NordLayer to set up a VPN connection.
  1. Tap `Allow access` to allow NordLayer access to your location (for recommended servers).
  1. Tap `Allow access` to access VPN settings and you're all set!

- iOS:

  1. Go to the App Store and search for `NordLayer` and tap `Get` to download the app.
  1. Enter `gitlab` as the organization ID and tap `continue`.
  1. Tap `Log in with Okta` and follow the prompts.
  1. Tap `Allow access` to allow NordLayer access to your VPN settings.
  1. Tap `Allow` to allow NordLayer to add VPN configurations.
  1. Tap `Allow access` to allow NordLayer access to your location (for recommended servers) and you're all set!

## Configuration

We recommend you set NordLayer to auto-connect when using untrusted wi-fi (networks with no password or weak encryption):

- MacOS:

  1. Go to NordLayer preferences and select the **Auto-Connect** tab.
  1. Select **When using untrusted Wi-Fi** (or **When app launches** and [add your home network as trusted](#add-your-home-network-to-the-trusted-list-macos-only)).

- Linux:

  1. If NordLayer is running, in your terminal run `nordlayer settings set`.
  1. Select **Auto-connect**, and then **When using untrusted Wi-Fi**.

  To learn more, see [NordLayer application usage on Linux](https://help.nordlayer.com/docs/nordlayer-application-usage-on-linux).

### Add Your Home Network to the Trusted List (MacOS only)

> When you add a trusted network to the list, your laptop will keep NordLayer disconnected while at home. This allows you to use the internet at full speed, and will automatically connect while you're on any untrusted network away from home.
>
> Please keep in mind that when you connect to a trusted network, you are no longer protected through a VPN. Do not do this if you're at a hotel, on a guest newtork, or anywhere outside of your home network (unless needed to get through initial wi-fi portal terms and conditions captive portal screen).

1. Go to NordLayer preferences and select the **Auto-Connect** tab.
1. Verify the Network listed under **Current Network** is your home network and select **Trust**.
