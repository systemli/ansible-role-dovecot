ansible-role-dovecot
====================

[![Build Status](https://github.com/systemli/ansible-role-dovecot/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/systemli/ansible-role-dovecot/actions/workflows/main.yml)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-dovecot-blue.svg)](https://galaxy.ansible.com/systemli/dovecot)

Install and maintain Dovecot with Ansible.
Tested with GitHub Actions and Molecule (Docker driver).

Requirements
------------

Debian 12 (bookworm) or Debian 13 (trixie). CI currently tests Debian 13.

Testing & Development
---------------------

For developing and testing the role we use GitHub Actions and Molecule with the Docker driver.
Locally you need Docker (or a compatible container runtime), `molecule`, `molecule-plugins[docker]` and `ansible-lint`.

Run local tests with:

```
molecule test
```

Or iterate on the role with:

```
molecule converge
molecule login
```

License
-------

GPL

Author Information
------------------

<https://www.systemli.org>
