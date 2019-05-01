#!/bin/sh

cd 1_create_package 
tar cvfz package.tgz * 
mv package.tgz ../2_create_project/ 
cd ../2_create_project/ 
tar cvfz consul.spk * 
mv consul.spk ..
rm -f package.tgz
