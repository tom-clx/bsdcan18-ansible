#!/bin/sh

# This script allows Ansible to execute commands in a chroot on a remote host;
# a capability that Ansible seems to lack.
#
# Usage:
#  rchroot.sh $chroot_path $command

chroot_path="${1:?No path parameter}"
shift
cmnd="${*:?No command parameters provided!}"

for a in $@; do
	echo "$a"
done

chroot "$chroot_path" $@
