LOCAL_PATH := $(call my-dir)

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)

$(TARGET_RECOVERY_ROOT_TIMESTAMP): $(INTERNAL_RECOVERY_FILES) \
		$(INSTALLED_RAMDISK_TARGET) \
		$(INSTALLED_BOOTIMAGE_TARGET) \
		$(recovery_binary) \
		$(recovery_initrc) \
		$(INSTALLED_2NDBOOTLOADER_TARGET) \
		$(recovery_build_prop) $(recovery_resource_deps) \
		$(recovery_fstab) \
		$(RECOVERY_INSTALL_OTA_KEYS) \
		$(INSTALLED_BOOTIMAGE_TARGET)
	@echo ----- Making recovery filesystem ------
	mkdir -p $(TARGET_RECOVERY_OUT)
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/etc
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/tmp
	echo Copying baseline ramdisk...
	cp -R $(TARGET_ROOT_OUT) $(TARGET_RECOVERY_OUT)
	echo Modifying ramdisk contents...
	cp -f $(recovery_initrc) $(TARGET_RECOVERY_ROOT_OUT)/
	cp -f $(recovery_binary) $(TARGET_RECOVERY_ROOT_OUT)/sbin/
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/system/bin
	cp -rf $(recovery_resources_common) $(TARGET_RECOVERY_ROOT_OUT)/
	$(foreach item,$(recovery_resources_private), \
	  cp -rf $(item) $(TARGET_RECOVERY_ROOT_OUT)/)
	$(foreach item,$(recovery_fstab), \
	  cp -f $(item) $(TARGET_RECOVERY_ROOT_OUT)/etc/recovery.fstab)
	cp $(RECOVERY_INSTALL_OTA_KEYS) $(TARGET_RECOVERY_ROOT_OUT)/res/keys
	cp $(BOARD_CUSTOM_PROP_TARGET) $(TARGET_RECOVERY_ROOT_OUT)/default.prop
	@echo ----- Made recovery filesystem -------- $(TARGET_RECOVERY_ROOT_OUT)
	@touch $(TARGET_RECOVERY_ROOT_TIMESTAMP)

$(recovery_uncompressed_ramdisk): $(MINIGZIP) \
    $(TARGET_RECOVERY_ROOT_TIMESTAMP)
	@echo ----- Making uncompressed recovery ramdisk ------
	$(MKBOOTFS) $(TARGET_RECOVERY_ROOT_OUT) > $@

$(recovery_ramdisk): $(MKBOOTFS) \
    $(recovery_uncompressed_ramdisk)
	@echo ----- Making recovery ramdisk ------
	$(MINIGZIP) < $(recovery_uncompressed_ramdisk) > $@

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	$(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) --output $@
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	$(hide) cp -f $(INSTALLED_RECOVERYIMAGE_TARGET) $(INSTALLED_BOOTIMAGE_TARGET) 
