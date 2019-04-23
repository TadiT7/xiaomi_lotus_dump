#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:8e872c78212b7384aa91f747f46072c39aa13728; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:1319a4d1ef7e8182c62edea84283c8183e07e3a7 EMMC:/dev/block/platform/bootdevice/by-name/recovery 8e872c78212b7384aa91f747f46072c39aa13728 33554432 1319a4d1ef7e8182c62edea84283c8183e07e3a7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
