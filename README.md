raspi-expanded-rootfs
=====================

An Ansible role for automatically expanding the root filesystem of a Raspberry Pi to fill the available space.

Notes
------------

* This role internally uses `raspi-config` to expand the root filesystem, so the behaviour is the same as running that tool. For example, the operation is non-destructive.

Requirements
------------

Requires `raspi-config` to be installed. (It's installed by default on Raspbian.)

Role Variables
--------------

This role does not have any variables.

Dependencies
------------

This role does not have any dependencies.

Example Playbook
----------------

    - hosts: servers
      roles:
        - role: raspi-expanded-rootfs

License
-------

MIT

Author Information
------------------

Created by Charles Korn ([me@charleskorn.com](me@charleskorn.com)).


Contributing
------------

Submit issues and pull requests on GitHub at [https://github.com/charleskorn/raspi-expanded-rootfs](https://github.com/charleskorn/raspi-expanded-rootfs).
