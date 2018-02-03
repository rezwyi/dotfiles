#!/bin/sh

envsubst '$GIT_USER_NAME $GIT_USER_EMAIL' < config.template > $HOME/.gitconfig

exit 0
