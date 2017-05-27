# h2o [![Build Status](https://travis-ci.org/hfm/puppet-h2o.svg?branch=master)](https://travis-ci.org/hfm/puppet-h2o) [![Puppet Forge](https://img.shields.io/puppetforge/v/hfm/h2o.svg?style=flat-square)](https://forge.puppet.com/hfm/h2o)

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with h2o](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with h2o](#beginning-with-h2o)
1. [Usage - Configuration options and additional functionality](#usage)
    - [Configuring](#configuring)
    - [Configuring modules from Hiera](#configuring-modules-from-hiera)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
    - [Public Classes](#public-classes)
    - [Private Classes](#private-classes)
    - [Parameters](#parameters)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)
    - [Running tests](#running-tests)
    - [Testing quickstart](#testing-quickstart)

## Description

The h2o module handles installing, configuring, and running [h2o](https://h2o.examp1e.net/).

## Setup

### Setup Requirements

- [puppetlabs-stdlib](https://forge.puppet.com/puppetlabs/stdlib) (>= 4.0.0 < 5.0.0)
- [puppetlabs-apt](https://forge.puppet.com/puppetlabs/apt) (>= 2.0.0 < 5.0.0)

### Beginning with h2o

To install the h2o with default parameters, declare the `h2o` class.

```puppet
include ::h2o
```

## Usage

### Configuring h2o

```puppet
class { 'h2o':
  package_ensure => '2.2.2-1~ubuntu16.04.1',
}
```

### Configuring modules from Hiera

```yaml
h2o::package_ensure: '2.2.2-1~ubuntu16.04.1'
```

## Reference

### Public Classes

- [`h2o`](#h2o): Installs and runs h2o.

### Private Classes

- `h2o::install`: Installs the h2o package.
- `h2o::repo`: Manages the h2o repository.
- `h2o::repo::yum`: Manages the Yum repository.
- `h2o::repo::apt`: Manages the Apt sources.
- `h2o::service`: Manages service.

### Parameters

#### `h2o` class

- `repo_ensure`: Specifies whether the h2o repository should exist. Type is the String. Default: 'present'.
- `package_ensure`: What state the package should be in. Type is the String. Default: 'installed'.
- `service_ensure`: Whether a service should be running. Type is the String. Default: 'running'.
- `service_enable`: Whether a service should be enabled to start at boot. Type is the Boolean. Default: true.

## Limitations

This module has been tested on:

- RedHat Enterprise Linux 6, 7
- CentOS 6, 7
- Scientific Linux 6, 7
- Fedora 22, 23, 24, 25
- Debian 7, 8
- Ubuntu 14.04, 16.04

## Development

### Running tests

The tinyproxy module contains tests for both [rspec-puppet](http://rspec-puppet.com/) (unit tests) and [beaker-rspec](https://github.com/puppetlabs/beaker-rspec) (acceptance tests) to verify functionality. For detailed information on using these tools, please see their respective documentation.

### Testing quickstart

Unit tests:

```console
$ bundle install
$ bundle exec rake test
```

Acceptance tests using docker:

```console
# List available beaker nodesets
$ bundle exec rake beaker_nodes
centos7
xenial

# Run beaker acceptance tests
$ BEAKER_set=xenial bundle exec rake beaker
```
