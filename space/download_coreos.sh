#!/bin/bash

pushd boot
if ! test -d coreos; then
  mkdir coreos
fi
pushd coreos
wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz
wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz.sig
wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz
wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz.sig
popd
popd

