# Inherit device configuration.
$(call inherit-product, device/malata/smba9701/device-smba9701.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_NAME := cm_smba9701
PRODUCT_RELEASE_NAME := smba9701
PRODUCT_BRAND := Malata
PRODUCT_DEVICE := smba9701
PRODUCT_MODEL := Malata SMBA9701
PRODUCT_MANUFACTURER := Malata
#Stole from Pershoot (should allow better market selection)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:4.0.4/IMM76D/UELPL:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 4.0.4 IMM76D UELPL release-keys"
