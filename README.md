# consul-spk

This package is heavily based from the work done for [consul-spk](https://github.com/alexandregz/gogs-spk)

[Consul](https://consul.io) (Service mesh) SPK package ([Synology PacKages](https://www.synology.com/en-us/dsm/app_packages))

Install Consul into a Synology NAS.

## Requirements

Only tested on x64 (DS916+) could work on ARM since there an available consul binary.

## Usage

Change **Package Center -> Trust Level** to **Any Publisher** and import manually the package from **Manual install**.
Finally, install with Consul web installation.

## To use with another arch

Download the binary from https://www.consul.io/downloads.html, replace the content from **1_create_package/consul** directory and exec create_spk.sh:

```~/src/consul-spk(master)$ rm -rf 1_create_package/consul/ && unzip consul_1.4.4_linux_amd64.zip && mv consul ./1_create_package/```

```$ sh create_spk.sh```

