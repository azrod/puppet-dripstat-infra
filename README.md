
# Puppet dripstat-infra

This module deploy dripstat-infra agent latest release.

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with dripstatinfra](#setup)
5. [Development](#development)

## Description

This class is used to configure all the elements necessary for the proper functioning of the dripstat-infra agent.

It configures the following elements:
* Add source apt
* Add GPG Key apt
* Install latest release dripstat-infra package from apt
* Deploy config file config.toml
* Deploy logrotate config

## Setup

It is necessary to configure **config.toml** in addition to your key

## Development

Development for a personal project and publish to the opensource community
