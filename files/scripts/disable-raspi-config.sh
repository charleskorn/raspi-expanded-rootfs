#!/usr/bin/env bash

set -e

# Based on the code in raspi-config that disables itself
# See https://github.com/asb/raspi-config/blob/master/raspi-config

if [ -e /etc/profile.d/raspi-config.sh ]; then
  rm -f /etc/profile.d/raspi-config.sh
  sed -i /etc/inittab \
    -e "s/^#\(.*\)#\s*RPICFG_TO_ENABLE\s*/\1/" \
    -e "/#\s*RPICFG_TO_DISABLE/d"
  telinit q
fi
