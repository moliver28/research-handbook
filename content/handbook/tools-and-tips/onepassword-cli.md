---
title: "1Password and Environment Variables"
description: "Secure secrets handling for local development"
---

During development it is often necessary to use test secrets locally on your development machine.
Even though these secrets are limited in their access it's still best practice to avoid writing them unencrypted to disk.
Manually loading them into environment variables or using them for CLI commands directly also risks them being written to disk as part of your shell history.
As an alternative, 1Password has a CLI utility which can help manage local secrets securely.

### Install the CLI Utility

Install it using the instructions [here](https://developer.1password.com/docs/cli/get-started/).
It can be used alongside the normal GUI, so if you haven't installed the GUI yet then you should also do so.

### Store secrets in 1Password

Using the GUI application as you normally would, store any secrets that you need for development.

### Define the environment

Create a ".env" file containing the name of the environment variable(s) to define and the secrets to load into them from 1Pass.
The environment variable name goes before the equals sign, and the path to the secret in 1Password goes after.
For example:

```shell
PIPELINE_TOKEN="op://SomeVault/testing pipeline trigger token/credential"
```

The paths can be obtained by viewing the credential in 1Password, clicking the dropdown menu and clicking "Copy Secret Reference".

### Run processes using the secrets

When running processes which need the secrets, run it under the control of 1Password, so it can pass the variables correctly.
To do this, prepend `op run --env-file="<path to your env file>" --` to the command you wish to run, and replace any secrets with the relevant variable

So for example

```shell
curl -X POST --form token=EXAMPLE_EXPOSED_SECRET --form ref=master https://gitlab.com/api/v4/projects/example-project/trigger/pipeline
```

would become:

```shell
op run --env-file="pipeline.env" -- curl -X POST --form token=$PIPELINE_TOKEN --form ref=master https://gitlab.com/api/v4/projects/example-project/trigger/pipeline
```

Where the process is interactive or has dynamic output (progress bars, etc) you may need to disable masking to make the display work correctly. You can do this by adding `--no-masking`

### Advanced usage with .bashrc

Optionally, if you have a number of environments that you use frequently you can create functions to easily load the correct environment.

One example of this is below. It adds a 'loadenv' command to bash which automatically starts a subshell containing all the relevent variables,
assuming the current directory is a git repository and an environment variable with a matching name is available in $HOME/devenv/envfiles.
The modified $PS1 checks for the presence of the 'ENVFILE' variable, and if it exists displays it in the shell prompt to show what environment file is loaded in this shell.

```shell
# Base PS1 + add ($ENVFILE) in red if set
export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$([ -n "$ENVFILE" ] && echo -n " \e[91m($ENVFILE)\e[0m")\$ '

alias project="git remote get-url origin | sed -e 's/^.*\///g' | sed -e 's/\.git$//g'"
# Environment file load
loadenv() {
  ENVFILE=$(project) op run --env-file="$HOME/devenv/envfiles/$(project).env" --no-masking -- /bin/bash
}
```
