#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:dbe6d47d3d5001d76441c91355b113503925ea85; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:5aad483624e73cca64e4d7a2bf552052fa77a0a7 EMMC:/dev/block/platform/bootdevice/by-name/recovery dbe6d47d3d5001d76441c91355b113503925ea85 33554432 5aad483624e73cca64e4d7a2bf552052fa77a0a7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
