Ansible Role:  ntp
=========
[![Build Status](https://travis-ci.org/biggsean/ansible-role-ntp.svg?branch=master)](https://travis-ci.org/biggsean/ansible-role-ntp)

Simple role to install ntp.

Requirements
------------

None

Role Variables
--------------

All variables are defined in defaults.
### ntp_use_default_configuration
When set to true, just using the existing ntp.conf from the install and skip the configure step entirely.  Defaults to *false*

### ntp_conf_template
Optionally overide the roles ntp.con.j2

### ntp_servers
A list of ntp servers.  This defaults to the Centos ntp servers at ntp.org.

### ntp_restricts
Restrict lines for ntp.conf.  See defaults/main.yml for the default.

### ntp_local_clock_fallback
Sets local clock as a fall back server (stratum 12)

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

