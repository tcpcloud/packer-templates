#!/bin/sh
curl -L https://bootstrap.saltstack.com | sudo sh -s --
curl -k -L https://bootstrap.saltstack.com | sudo sh -s --
rm -f /tmp/install_salt.sh

