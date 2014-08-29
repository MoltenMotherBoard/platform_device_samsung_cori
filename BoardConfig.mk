# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Import the bcm21553-common BoardConfigCommon.mk
include device/samsung/bcm21553-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_PLATFORM				:= bcm21553
TARGET_BOOTLOADER_BOARD_NAME			:= cori

# Recovery
BOARD_BOOTIMAGE_PARTITION_SIZE			:= 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE		:= 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE		:= 241172480
BOARD_USERDATAIMAGE_PARTITION_SIZE		:= 206831616
BOARD_FLASH_BLOCK_SIZE				:= 4096
BOARD_USE_CUSTOM_RECOVERY_FONT			:= "<font_7x16.h>"
TARGET_RECOVERY_INITRC				:= device/samsung/cori/recovery/recovery.rc

# Kernel config
TARGET_KERNEL_CONFIG				:= bcm21553_cori_defconfig

# OTA Override
TARGET_OTA_ASSERT_DEVICE			:= cori,GT-S5300,gt-s5300
