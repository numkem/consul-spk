# consul-spk

This package is heavily based from the work done for [gogs-spk](https://github.com/alexandregz/gogs-spk)

[Consul](https://consul.io) (Service mesh) SPK package ([Synology PacKages](https://www.synology.com/en-us/dsm/app_packages))

Install Consul into a Synology NAS.

## Requirements

Only tested on x64 (DS916+) could work on ARM since there an available consul binary.

## Configuration

You can store your configuration using a `conf.d` folder inside `1_create_package/consul/`. If you don't want to ship your configurations with the package, you can use `/usr/local/consul/conf.d/`.

## To use with another arch

Download the binary from https://www.consul.io/downloads.html, replace the content from **1_create_package/consul** directory and exec create_spk.sh:

```~/src/consul-spk(master)$ rm -rf 1_create_package/consul/ && unzip consul_1.8.4_linux_amd64.zip && mv consul ./1_create_package/```

```$ sh create_spk.sh```

