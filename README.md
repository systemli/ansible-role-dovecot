ansible-role-dovecot
====================

[![Build Status](https://travis-ci.org/systemli/ansible-role-dovecot.svg?branch=master)](https://travis-ci.org/systemli/ansible-role-dovecot)

Install and maintain Dovecot with Ansible. Optionally, integrate with [Userli](https://github.com/systemli/userli).
Contains tests for Travis CI, Molecule and Vagrant.

Requirements
------------

Debian 10, 9, or 8. Other versions of Debian/Ubuntu might be supported as well, but aren't tested.

Tests
-----

Run local tests with
```
molecule test
```
Requires Molecule, Vagrant and `python-vagrant` to be installed.

License
-------

GPL

Author Information
------------------

https://www.systemli.org
