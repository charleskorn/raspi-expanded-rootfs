raspi-expanded-rootfs
=====================

An Ansible role for automatically expanding the root filesystem of a Raspberry Pi to fill the available space.

Notes
------------

* Take note that since [Raspbian 2016-05-10](https://downloads.raspberrypi.org/raspbian/release_notes.txt): `File system automatically expanded on first boot`.

* This role internally uses `raspi-config` to expand the root filesystem, so the behaviour is the same as running that tool. For example, the operation is non-destructive.

* Inventory example:

    ```
    # For initial setup of Raspbian (you will need to accept the SSH host key on the first connection)
    pi ansible_host=192.168.0.100 ansible_user=pi ansible_ssh_pass=raspberry

    # For completely automatic initial setup of Raspbian (only do this if you're on a network you trust)
    pi ansible_host=192.168.0.100 ansible_user=pi ansible_ssh_pass=raspberry ansible_ssh_extra_args='-o StrictHostKeyChecking=no'

    # After initial setup, assuming you've set up a SSH key
    pi ansible_host=192.168.0.100 ansible_user=pi
    ```

Requirements
------------

* Requires `raspi-config` to be installed. (It's installed by default on Raspbian.)

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
        - role: charleskorn.raspi-expanded-rootfs
          become: yes

License
-------

MIT

Author Information
------------------

Created by Charles Korn ([me@charleskorn.com](me@charleskorn.com)).


Contributing
------------

Submit issues and pull requests on GitHub at [https://github.com/charleskorn/raspi-expanded-rootfs](https://github.com/charleskorn/raspi-expanded-rootfs).
