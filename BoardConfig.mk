#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# inherit from the common version first
-include device/malata/smba_common/BoardConfigCommon.mk

BOARD_MOBILEDATA_INTERFACE_NAME := "wwan0"

TARGET_OTA_ASSERT_DEVICE := harmony,smba9701

BOARD_USES_MBM_GPS := true

#Built from source kernel
TARGET_KERNEL_CONFIG        := tegra_smba9701_defconfig
TARGET_KERNEL_SOURCE        := kernel/malata/smba9701

BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0FA00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PROVIDES_INIT_RC := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_VOLD_MAX_PARTITIONS := 16
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p7
BOARD_PROVIDES_LIBRIL := false

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/malata/smba9701/prebuilt/recovery_keys.c
