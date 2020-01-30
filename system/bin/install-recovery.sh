#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery:36700160:5d728809fda86c6b093ee595505e1565f4a1d6f0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/boot:36700160:d5bd0cffecedd2c8431ab7a84b9746a5f939b91b EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery 5d728809fda86c6b093ee595505e1565f4a1d6f0 36700160 d5bd0cffecedd2c8431ab7a84b9746a5f939b91b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
