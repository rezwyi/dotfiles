#!/bin/sh

envsubst '$GIT_USER_NAME $GIT_USER_EMAIL' < config.template > ~/.gitconfig

exit 0
