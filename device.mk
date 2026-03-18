#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
TARGET_HAS_UDFPS := true
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/cupid/cupid-vendor.mk)

# Miui Camera for cupid
$(call inherit-product, device/xiaomi/miuicamera-cupid/device.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/mixer_paths_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/resourcemanager_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/resourcemanager_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Overlay
PRODUCT_PACKAGES += \
    ApertureResCupid \
    FrameworksResCupid \
    LineageResCupid \
    NfcResCupid \
    SettingsProviderResCupid \
    SettingsResCupid \
    SystemUIResCupid \
    WifiResCupid

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Dalvik
PRODUCT_VENDOR_PROPERTIES += \
    dalvik.vm.heapstartsize?=16m \
    dalvik.vm.heapgrowthlimit?=384m \
    dalvik.vm.heapsize?=512m \
    dalvik.vm.heaptargetutilization?=0.75 \
    dalvik.vm.heapminfree?=512k \
    dalvik.vm.heapmaxfree?=8m
