#!/bin/sh -e

ARCH=amd64
OS=linux

(
  rm 1_create_package/consul/* consul.zip consul || true
  . 2_create_project/INFO
  wget https://releases.hashicorp.com/consul/$version/consul_${version}_${OS}_${ARCH}.zip -O consul.zip
  unzip consul.zip
  mv consul 1_create_package/consul
)

cd 1_create_package 
tar cvfz package.tgz * 
mv package.tgz ../2_create_project/ 
cd ../2_create_project/ 
tar cvfz consul.spk * 
mv consul.spk ..
rm -f package.tgz
