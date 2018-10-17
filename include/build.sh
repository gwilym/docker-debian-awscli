#!/bin/bash
set -e

date

apt-get update
apt-get -y upgrade
apt-get -y install python wget unzip

unzip -v
wget --version

wget -q https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
unzip -q awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
rm -rf /awscli-bundle.zip /awscli-bundle

aws --version

# python is required for awscli at runtime, we also keep wget and unzip
# installed since it's often used in downstream images

rm -rf /var/lib/apt/lists/*
