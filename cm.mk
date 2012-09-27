# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for smb_b9701.
$(call inherit-product, device/malata/smba9701/full_smba9701.mk)

# Release name
PRODUCT_NAME := cm_smba9701
PRODUCT_RELEASE_NAME := smba9701

#
# Setup device specific product configuration.
#
PRODUCT_DEVICE := smba9701

