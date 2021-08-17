ansible-role-dovecot
====================

[![Build Status](https://github.com/systemli/ansible-role-dovecot/workflows/Integration/badge.svg?branch=master)](https://github.com/systemli/ansible-role-dovecot/actions?query=workflow%3AIntegration)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-dovecot-blue.svg)](https://galaxy.ansible.com/systemli/dovecot)

Install and maintain Dovecot with Ansible. Optionally, integrate with [Userli](https://github.com/systemli/userli).
Tested with Github Action, Molecule, and Docker or Vagrant.

Requirements
------------

Debian 11, 10, or 9. Other versions of Debian/Ubuntu might be supported as well, but aren't tested.


Testing & Development
---------------------

Tests
-----

For developing and testing the role we use Github Actions, Molecule, and Vagrant. On the local environment you can easily test the role with

Run local tests with:

```
molecule test 
```

License
-------

GPL

Author Information
------------------

https://www.systemli.org
