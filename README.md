Ansible Role:  biggsean.ntp 1.x
=========
[![Build Status](https://travis-ci.org/biggsean/ansible-role-ntp.svg?branch=master)](https://travis-ci.org/biggsean/ansible-role-ntp)

Simple role to install ntp.

Requirements
------------

None

Role Variables
--------------

All variables are defined in defaults.

### ntp_servers
A list of ntp servers.  This defaults to the Centos ntp servers at ntp.org.

Dependencies
------------

None

Example Playbook
----------------

```
- hosts: servers
  vars:
    ntp_servers:
    - foo.ntp.example.com
    - bar.ntp.example.com
  roles:
    - biggsean.ntp
```

License
-------

BSD, MIT

