#!/usr/bin/env bash

set -e
set -u
set -o pipefail

: "${ROOT_DIR:=$( git rev-parse --show-toplevel )}"
: "${GITLAB_CI_FILE:=${ROOT_DIR}/.gitlab-ci.yml}"
: "${YQ_IMAGE:=mikefarah/yq:4}"
: "${HUGO_IMAGE:=hugomods/hugo:exts}"
: "${HUGO_CACHE:=/tmp/hugo_cache}"
readonly ROOT_DIR GITLAB_CI_FILE YQ_IMAGE HUGO_IMAGE HUGO_CACHE

main() {
  local img

  cd "${ROOT_DIR}"
  img="${HUGO_IMAGE}-$(hugo::version)"
  mkdir -p "${HUGO_CACHE}"
  docker::run -e HUGO_CACHE -v "${HUGO_CACHE}:${HUGO_CACHE}" -ti --network host "${img}" hugo server
}

# get the hugo version to run
# if `HUGO_VERSION` is set, use that, else try to get the version from the CI config
hugo::version() {
  [[ -v HUGO_VERSION ]] && {
    echo "$HUGO_VERSION"
    return
  }

  yq '.build.image | split(":") | .[-1]' \
    < "${GITLAB_CI_FILE}"
}

# run Mike Farah's `yq`, inside docker, so we don't rely on the user's yq,
# which could also be the python one
yq() {
  docker::run -i "${YQ_IMAGE}" "$@"
}

# run `docker run` with
#   - the callers UID
#   - from the current directory
#   - mounting the current directory
# and remove the container on exit
docker::run() {
  local uid gid

  uid="$( id -u )"
  gid="$( id -g )"

  docker run -u "${uid}:${gid}" --rm -v "${PWD}:${PWD}" -w "${PWD}" "$@"
}

main "$@"
