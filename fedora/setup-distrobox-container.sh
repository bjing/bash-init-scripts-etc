#!/bin/bash

distrobox create --root \
  --name gentoo-box \
  --image docker.io/gentoo/stage3:latest \
  --hostname gentoo-box \
  --home ~/Distrobox/gentoo-box/home
