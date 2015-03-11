#!/bin/bash
echo "Please enter your DigitalOcean API key: "
echo "(if not used put some random stuff)"
read -r DO_API_TOKEN_INPUT
export DO_API_TOKEN=$DO_API_TOKEN_INPUT
echo "Please enter provision username: "
read -r BUILD_USER_INPUT
export BUILD_USER=$BUILD_USER_INPUT
echo "Please enter provision password: "
read -sr BUILD_PASSWORD_INPUT
export BUILD_PASSWORD=$BUILD_PASSWORD_INPUT

