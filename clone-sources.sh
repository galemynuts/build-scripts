#!/bin/sh

echo "What's your ROM's Android version? (14/15)"
read ver

if [ "$ver" = "15" ]; then
    rm -rf packages/apps/FMRadio
    rm -rf device/xiaomi/gale
    rm -rf device/xiaomi/gale-kernel
    rm -rf hardware/mediatek
    rm -rf device/mediatek/sepolicy_vndr
    rm -rf hardware/xiaomi
    rm -rf vendor/xiaomi/gale
    git clone https://github.com/xiaomi-mt6768-devs/device_xiaomi_gale -b lineage-22 device/xiaomi/gale
    git clone https://github.com/xiaomi-mt6768-devs/device_xiaomi_gale-kernel -b lineage-21 device/xiaomi/gale-kernel
    git clone https://github.com/xiaomi-mt6768-devs/hardware_mediatek -b lineage-22 hardware/mediatek
    git clone https://github.com/xiaomi-mt6768-devs/device_mediatek_sepolicy_vndr -b lineage-22 device/mediatek/sepolicy_vndr
    git clone https://github.com/xiaomi-mt6768-devs/hardware_xiaomi -b lineage-22 hardware/mediatek
    git clone https://github.com/xiaomi-mt6768-devs/vendor_xiaomi_gale -b lineage-21 vendor/xiaomi/gale
elif [ "$ver" = "14" ]; then
    rm -rf packages/apps/FMRadio
    rm -rf device/xiaomi/gale
    rm -rf device/xiaomi/gale-kernel
    rm -rf hardware/mediatek
    rm -rf device/mediatek/sepolicy_vndr
    rm -rf hardware/xiaomi
    rm -rf vendor/xiaomi/gale
    git clone https://github.com/xiaomi-mt6768-devs/device_xiaomi_gale -b lineage-21 device/xiaomi/gale
    git clone https://github.com/xiaomi-mt6768-devs/device_xiaomi_gale-kernel -b lineage-21 device/xiaomi/gale-kernel
    git clone https://github.com/LineageOS/android_hardware_mediatek -b lineage-21 hardware/mediatek
    git clone https://github.com/xiaomi-mt6768-devs/device_mediatek_sepolicy_vndr -b lineage-21 device/mediatek/sepolicy_vndr
    git clone https://github.com/xiaomi-mt6768-devs/hardware_xiaomi -b lineage-21 hardware/mediatek
    git clone https://github.com/xiaomi-mt6768-devs/vendor_xiaomi_gale -b lineage-21 vendor/xiaomi/gale
else
    echo "The version you specified ($ver) is unsupported."
    exit 1
fi
