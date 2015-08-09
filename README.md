raspi-expanded-rootfs
=====================

An Ansible role for automatically expanding the root filesystem of a Raspberry Pi to fill the available space.

Notes
------------

* This role internally uses `raspi-config` to expand the root filesystem, so the behaviour is the same as running that tool. For example, the operation is non-destructive.

* This role currently tests for the existence of the file `/var/ansible/fs_expanded` to determine if the filesystem has already been expanded or not.

  If you've already manually expanded the filesystem and then run this role anyway, the first time the role runs it will still go through the process of expanding the filesystem,
  but this will be harmless and on following runs it will do nothing.
  
  If you'd like to make this more intelligent (eg. by interrogating the system to determine if the filesystem has been expanded), a pull request would be most welcome :)

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
