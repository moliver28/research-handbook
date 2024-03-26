---

title: "Permifrost"
description: "Manage Snowflake Permissions"
---









---

## Quick Links

[Permifrost Project](https://gitlab.com/gitlab-data/permifrost/){:.btn .btn-purple-inv}
[PyPI](https://pypi.org/project/permifrost/){:.btn .btn-purple-inv}

## Permifrost

Permifrost is a python tool for managing permissions on a Snowflake data warehouse. The main documentation for using the tool is available in the project and on PyPI.

### Caveats and Errors

- Objects that exist but are not in the config file do not lead to errors
- Role/warehouse/database creation and deletion is not managed by permifrost
    - Removing entire roles from the file will **not** delete them

### Development

Follow these steps to create and prepare your virtual environment.

```bash
# create a virtualenv
python -m venv ~/.venv/permifrost

# activate your virtualenv
source ~/.venv/permifrost/bin/activate

# install dependencies
pip install -r requirements.txt

# pip3 install all the development dependencies
pip install -e '.[dev]'
```

Once you've committed your changes, submit a merge request and update the default template.

### Release Process

#### Versioning

Permifrost uses [semver](https://semver.org/) as its version number scheme.

#### Prerequisites

Ensure you have the latest `master` branch locally before continuing.

```bash
git fetch origin
```

#### Workflow

Permifrost uses tags to create its artifacts. Pushing a new tag to the repository will publish it as docker images and a PyPI package.

1. Ensure your installation is up to date following the Development workflow outlined above

1. Execute the commands below:

    ```bash
    # create and checkout the `release-next` branch from `origin/master`
    git checkout -B release-next origin/master

    # view changelog (verify changes made match changes logged)
    changelog view

    # after the changelog has been validated, tag the release
    make type=minor release

      # If doing a patch release, run
      make type=patch release

      # If doing a major release, run
      make type=major release

    # ensure the tag once the tag has been created, check the version we just bumped to: e.g. `0.22.0` => `0.23.0`.
    git describe --tags --abbrev=0

    # push the tag upstream to trigger the release pipeline
    git push origin $(git describe --tags --abbrev=0)

    # push the release branch to merge the new version, then create a merge request
    git push origin release-next
    ```

1. Create a merge request from `release-next` targeting `master`

1. Make sure to check `delete the source branch when the changes are merged`

1. When the **publish** pipeline succeeds, the release is publicly available on [PyPI](https://pypi.org/project/permifrost/)

# TODO: rbacovic to add more details about Permifrost
