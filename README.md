[![Build Status](https://travis-ci.org/FGtatsuro/ansible-python-requirements.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-python-requirements)

ansible-python-requirements
====================================

Ansible role to satisfy the requirements for python related actions on Ansible role.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian
- Alpine Linux
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

|name|description|type|default|
|---|---|---|---|
|python_requirements_update_existing_pip|If yes(true), Existing pip is updated to latest version. It means that `sudo pip install -U pip` is executed. <br>Additionally, symlink `/usr/bin/python` is created if this path doesn't exist to prevent Ansible pip module without `executable` parameter to be failed.|bool|no|

- The actions related to `python_requirements_update_existing_pip` ignore errors for several reasons. Thus, you should check the results if you set this value 'yes'.

Role Dependencies
-----------------

The dependencies on other roles for this role.

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.python-requirements }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run then on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

Notes
-----

On OSX, please check the point.

- At the result of this role, latest OpenSSL in Homebrew reposiotry is used instead of pre-isntalled one.

License
-------

MIT
