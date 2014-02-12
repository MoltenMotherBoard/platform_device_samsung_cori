# Copyright (C) 2010 The Android Open Source Project
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

CORI_PATH := device/samsung/cori
CORI_PREBUILT_ROOT_PATH := $(CORI_PATH)/prebuilt/root

PRODUCT_PACKAGES += \
    make_ext4fs \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    tune2fs \

PRODUCT_COPY_FILES += \
    $(CORI_PATH)/recovery.fstab:root/recovery.fstab \
    $(CORI_PREBUILT_ROOT_PATH)/default.prop:root/default.prop \
    $(CORI_PREBUILT_ROOT_PATH)/fota.rc:root/fota.rc \
    $(CORI_PREBUILT_ROOT_PATH)/init:root/init \
    $(CORI_PREBUILT_ROOT_PATH)/init.bcm21553.rc:root/init.bcm21553.rc \
    $(CORI_PREBUILT_ROOT_PATH)/init.charge.rc:root/init.charge.rc \
    $(CORI_PREBUILT_ROOT_PATH)/init.rc:root/init.rc \
    $(CORI_PREBUILT_ROOT_PATH)/j4fs.ko:root/j4fs.ko \
    $(CORI_PREBUILT_ROOT_PATH)/recovery.rc:root/recovery.rc \
    $(CORI_PREBUILT_ROOT_PATH)/sec_param.ko:root/sec_param.ko \
    $(CORI_PREBUILT_ROOT_PATH)/ueventd.rc:root/ueventd.rc \

PRODUCT_COPY_FILES += \
    $(CORI_PREBUILT_ROOT_PATH)/sbin/fix_permissions:root/sbin/fix_permissions \
    $(CORI_PREBUILT_ROOT_PATH)/sbin/killrecovery.sh:root/sbin/killrecovery.sh \
    $(CORI_PREBUILT_ROOT_PATH)/sbin/nandroid-md5.sh:root/sbin/nandroid-md5.sh \
