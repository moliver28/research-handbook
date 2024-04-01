---
title: "How to create a directory"
comment: Should be moved into the docs section and updated
aliases:
- /handbook/create-directory/
---

To create a directory in your project, you need to use your [shell](https://docs.gitlab.com/ee/gitlab-basics/basic-git-commands.html). You can learn how to [start using Git on the command line](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html) and the [command line basic commands](https://docs.gitlab.com/ee/gitlab-basics/command-line-commands.html) before reading this documentation.

The following are the basic steps to create a directory through your shell:

Go into the repository or project that you'll be working on:

```sh
cd NAME-OF-PROJECT
```

Download the latest changes in the project, so that you work on an up-to-date copy:

```sh
git pull
```

Create a branch (remember you can't add spaces, you need to use a hyphen or underscore):

```sh
git checkout -b NAME-OF-BRANCH
```

Go into the file where you'd like to add the directory:

```sh
cd NAME-OF-FILE
```

Create a directory:

```sh
mkdir NAME-OF-YOUR-NEW-DIRECTORY
```

Then go into the new directory:

```sh
cd NAME-OF-YOUR-NEW-DIRECTORY
```

Create a README.md or index.md in directory:

```markdown
touch README.md
nano README.md
#### ADD YOUR INFORMATION
#### Press: control + X
#### Type: Y
#### Press: enter
```

Go back one directory or file:

```sh
cd ../
```

View the changes you've made (it's important to be aware of what's happening and what's the status of your changes):

```sh
git status
```

Add the changes to later commit (you'll be able to see your changes in red when you type "git status"):

```sh
git add CHANGES
```

Check the status and you should see the name of your directory in green:

```sh
git status
```

Add a commit with your changes:

```sh
git commit -m "DESCRIBE COMMIT IN A FEW WORDS"
```

Send your changes to gitlab.com:

```sh
git push origin NAME-OF-BRANCH
```
