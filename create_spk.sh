#!/bin/sh -e

ARCH=amd64
OS=linux

mkdir -p 1_create_package/usr/local/bin || true
chmod -R 755 1_create_package/usr
(
  rm 1_create_package/consul/* consul.zip consul || true
  . 2_create_project/INFO
  wget https://releases.hashicorp.com/consul/$version/consul_${version}_${OS}_${ARCH}.zip -O consul.zip
  unzip consul.zip
  mv consul 1_create_package/usr/local/bin/consul
  chmod 755 1_create_package/usr/local/bin/consul
)

cd 1_create_package 
tar cvfz package.tgz * 
mv package.tgz ../2_create_project/ 
cd ../2_create_project/ 
tar cvf consul.spk *
mv consul.spk ..
rm -f package.tgz
