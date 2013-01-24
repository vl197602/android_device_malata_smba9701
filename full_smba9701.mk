# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Additional Product Packages for TeamDRH Build
PRODUCT_PACKAGES += \
    SpareParts \
    Development \
    Stk \
    Mms

PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \

# Live Wallpapers
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Camera
PRODUCT_PACKAGES += \
    Camera

PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \                                                                                                                                
    device/malata/smba9701/prebuilt/init.rc:root/init.rc \                                                                                             
    device/malata/smba9701/prebuilt/init.harmony.rc:root/init.harmony.rc \                                                                             
    device/malata/smba9701/prebuilt/init.local.rc:system/etc/init.local.rc \                                                                           
    device/malata/smba9701/prebuilt/vold.fstab:system/etc/vold.fstab                                                                                   

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/malata/smba_common/device-common.mk)

# Inherit from device specific if exists
$(call inherit-product-if-exists, vendor/malata/smba9701/smba9701-vendor.mk)

# Inherit from device specific if exists
$(call inherit-product-if-exists, device/malata/smba9701/device-smba9701.mk)

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/malata/smba9701/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_smba9701
PRODUCT_DEVICE := smba9701
PRODUCT_BRAND := Malata
PRODUCT_MODEL := Malata SMBA9701
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_MANUFACTURER:= Malata

