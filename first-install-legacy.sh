#!/bin/bash
mkdir /etc/portage/package.mask/ /etc/portage/make.conf/;ln -s /var/lib/layman/prototype99/profiles-local/custom /etc/portage/package.mask/custom;ln -s /var/lib/layman/prototype99/profiles-local/legacy /etc/portage/package.mask/legacy;ln -s /var/lib/layman/prototype99/profiles-local/lto /etc/portage/make.conf/lto;ln -s /var/lib/layman/prototype99/profiles-local/dir /etc/portage/make.conf/dir