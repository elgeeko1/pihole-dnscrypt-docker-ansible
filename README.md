# Ansible playbook for pihole + dnscrypt in docker

This playbook configures a host with pihole + dnscrypt in docker containers.

Features:

- installs latest docker
- dnscrypt-proxy in docker container with quad9 configured for resolution
- pihole in docker container, using dnscrypt-proxy for DNS resolution
- docker containers run in unprivileged containers with bridged (not host) network mode
- services port 53 on your host
- (optional) ipv6 support

## Requirements

Provisioning host:

- ansible 2.15 or later

Host that will run pihole:

- Ubuntu 20.04 or later

## How to use this playbook

First modify `inventory.yml` with your host. Then run `run-playbook.sh`.

## Configuring

This playbook is designed to work out-of-the-box without configuration
for a typical implementation. Persistent data is stored on the host
at `/opt/dnscrypt-proxy` and `/opt/pihole`.

docker, dnscrypt-proxy and pihole are configurable with role variables.
See the documentation for each role to see what can be configured.

- [elgeeko1-docker-ansible](https://github.com/elgeeko1/elgeeko1-docker-ansible)
- [elgeeko1-dnscrypt-proxy-ansible](https://github.com/elgeeko1/elgeeko1-dnscrypt-proxy-ansible)
- [elgeeko1-pihole-ansible](https://github.com/elgeeko1/elgeeko1-pihole-ansible)
