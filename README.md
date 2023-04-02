# geschke/dnsdist

![Docker Pulls](https://img.shields.io/docker/pulls/geschke/dnsdist)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/geschke/dnsdist/latest)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/geschke/docker-dnsdist/docker-publish.yml)

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
