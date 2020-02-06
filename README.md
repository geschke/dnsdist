# geschke/dnsdist

[![Image Size](https://images.microbadger.com/badges/image/geschke/dnsdist.svg)](https://microbadger.com/images/geschke/dnsdist)
[![Version](https://images.microbadger.com/badges/version/geschke/dnsdist.svg)](https://microbadger.com/images/geschke/dnsdist)
[![Docker Automated build](https://img.shields.io/docker/cloud/build/geschke/dnsdist)](https://hub.docker.com/r/geschke/dnsdist)

This is a Docker image with DNSdist DNS loadbalancer.

## Usage

To download the image run

    docker pull geschke/dnsdist

## Configuration

Due to the complexity there is no configuration by environment variables. Place your dnsdist.conf file into a local directory or use a Docker Configs file, then mount it to /etc/dnsdist/dnsdist.conf. 

## Usage example

tbd

## Credits

This image is based on the official Ubuntu image and the Ubuntu PowerDNS packages

Thank you all!
