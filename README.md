
# Puppet dripstat-infra

This module deploy dripstat-infra agent latest release.

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
2. [How to use](#how to use)
4. [Development](#development)

## Description

This class is used to configure all the elements necessary for the proper functioning of the dripstat-infra agent.

It configures the following elements:
* Add source apt
* Add GPG Key apt
* Install latest release dripstat-infra package from apt
* Deploy config file config.toml
* Deploy logrotate config

## Setup

It is necessary to configure config.toml by adding your key. Your license key is available [Here](https://dashboard.dripstat.com/#/addserver)
```ruby
licenseKey = '<YOUR KEY HERE>' # <== Add your licence key
logLevel = 'INFO'
```

## How to use
Is very easy to use this class. Add this line in your node.dd file
```ruby
include dripstatinfra::install
```
## Development

Development for a personal project and publish to the opensource community
