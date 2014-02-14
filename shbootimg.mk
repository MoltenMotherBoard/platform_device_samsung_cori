LOCAL_PATH := $(call my-dir)

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) \
		$(INTERNAL_BOOTIMAGE_FILES) \
		$(INTERNAL_RECOVERY_FILES) \
		$(INSTALLED_RAMDISK_TARGET) \
		$(INSTALLED_BOOTIMAGE_TARGET) \
		$(recovery_binary) \
		$(recovery_initrc) \
		$(INSTALLED_2NDBOOTLOADER_TARGET) \
		$(recovery_build_prop) $(recovery_resource_deps) \
		$(recovery_fstab) \
		$(RECOVERY_INSTALL_OTA_KEYS) \
		$(INSTALLED_BOOTIMAGE_TARGET) \
		$(MKBOOTFS) \
		$(MKBOOTIMG) \
		$(recovery_kernel)
	@echo ----- Executing shbootimg.mk ------
	mkdir -p $(TARGET_RECOVERY_OUT)
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/etc
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/tmp
	cp -R $(TARGET_ROOT_OUT) $(TARGET_RECOVERY_OUT)
	cp -f $(recovery_initrc) $(TARGET_RECOVERY_ROOT_OUT)/
	cp -f $(recovery_binary) $(TARGET_RECOVERY_ROOT_OUT)/sbin/
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/system/bin
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/lib
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/lib/modules
	cp -rf $(recovery_resources_common) $(TARGET_RECOVERY_ROOT_OUT)/
	$(foreach item,$(recovery_resources_private), \
	  cp -rf $(item) $(TARGET_RECOVERY_ROOT_OUT)/)
	$(foreach item,$(recovery_fstab), \
	  cp -f $(item) $(TARGET_RECOVERY_ROOT_OUT)/etc/recovery.fstab)
	cp $(RECOVERY_INSTALL_OTA_KEYS) $(TARGET_RECOVERY_ROOT_OUT)/res/keys
	cp $(BOARD_CUSTOM_PROP_TARGET) $(TARGET_RECOVERY_ROOT_OUT)/default.prop
	@touch $(TARGET_RECOVERY_ROOT_TIMESTAMP)
	$(MKBOOTFS) $(TARGET_RECOVERY_ROOT_OUT) > $(recovery_uncompressed_ramdisk)
	$(MINIGZIP) < $(recovery_uncompressed_ramdisk) > $(recovery_ramdisk)
	$(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) --output $(INSTALLED_RECOVERYIMAGE_TARGET)
	$(hide) $(call assert-max-image-size,$(INSTALLED_RECOVERYIMAGE_TARGET),$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	$(hide) cp -f $(INSTALLED_RECOVERYIMAGE_TARGET) $@

$(INSTALLED_RECOVERYIMAGE_TARGET): $(INSTALLED_BOOTIMAGE_TARGET)
	$(hide) cp -f $(INSTALLED_BOOTIMAGE_TARGET) $@
	@echo ----- Correctly compiled shbootimg.mk ------
