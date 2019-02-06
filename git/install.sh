#!/bin/sh

set -e

envsubst '$GIT_USER_NAME $GIT_USER_EMAIL' < config.template > $HOME/.gitconfig

exit 0
