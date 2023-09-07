#!/bin/bash
git config --global --add safe.directory /src
git config --global user.email ${GIT_EMAIL}
git config --global user.name ${GIT_NAME}
git config credential.https://github.com.username ${GIT_LOGIN}

