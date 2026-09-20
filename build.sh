#!/bin/bash
set -euo pipefail

PACKAGES="bash \
vim \
openssh-sftp-server \
tcpdump \
luci-proto-wireguard \
luci-theme-argon \
luci-i18n-base-zh-cn \
luci-i18n-firewall-zh-cn \
luci-i18n-package-manager-zh-cn \
luci-i18n-attendedsysupgrade-zh-cn \
luci-i18n-wol-zh-cn \
luci-i18n-ddns-go-zh-cn \
luci-i18n-ttyd-zh-cn \
luci-i18n-frpc-zh-cn \
luci-i18n-passwall-zh-cn \
luci-i18n-natmap-zh-cn
"

make image PACKAGES="$PACKAGES" ROOTFS_PARTSIZE="$ROOTFS_SIZE"
