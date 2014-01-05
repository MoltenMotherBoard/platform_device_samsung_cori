# Proprietary files
-include vendor/samsung/cori/BoardConfigVendor.mk

# Platform
TARGET_BOOTLOADER_BOARD_NAME			:= cori
TARGET_BOARD_PLATFORM				:= bcm21553

# CPU
TARGET_ARCH_VARIANT				:= armv6-vfp
TARGET_CPU_ABI					:= armeabi-v6l
TARGET_CPU_ABI2					:= armeabi
TARGET_NO_BOOTLOADER				:= true
TARGET_NO_RADIOIMAGE				:= true

# Partitions
TARGET_USERIMAGES_USE_EXT4			:= true
BOARD_BOOTIMAGE_PARTITION_SIZE                  := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE              := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE		:= 241172480
BOARD_USERDATAIMAGE_PARTITION_SIZE		:= 206831616
BOARD_FLASH_BLOCK_SIZE				:= 4096
BOARD_HAS_DOWNLOAD_MODE				:= true
BOARD_HAS_SDCARD_INTERNAL			:= true

# Kernel
BOARD_KERNEL_CMDLINE				:= console=ttyS0,115200n8 mem=362M kmemleak=off init=init root=/dev/ram0 rw mtdparts=bcm_umi-nand:256K@0K(bcm_boot),1536K@256K(bootloader)ro,1536K@1792K(loke)ro,512K@3328K(systemdata),512K@3840K(sysparm_dep),512K@4352K(umts_cal),15104K@4864K(modem),5M@19968K(param_lfs),2M@25088K(kpanic),6M@27136K(boot)ro,6M@33280K(boot_backup)ro,4M@39424K(recovery)ro,200M@43520K(system),70M@248320K(cache),192000K@320000K(userdata)rw,1M@500M(cal) androidboot.console=ttyS0 jtag
BOARD_KERNEL_BASE				:= 0x81600000
BOARD_KERNEL_PAGESIZE				:= 4096
BOARD_NAND_PAGE_SIZE				:= 4096 -s 128
BOARD_PAGE_SIZE					:= 0x00001000
TARGET_PREBUILT_KERNEL				:= device/samsung/cori/kernel

# Recovery
BOARD_USES_COMBINED_RECOVERY			:= true
BOARD_LDPI_RECOVERY				:= true
BOARD_RECOVERY_HANDLES_MOUNT			:= true
BOARD_CUSTOM_RECOVERY_KEYMAPPING		:= ../../device/samsung/cori/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS				:= ../../../device/samsung/cori/recovery/graphics.c
TARGET_RECOVERY_FSTAB				:= device/samsung/cori/recovery.fstab
TARGET_RECOVERY_INITRC				:= device/samsung/cori/prebuilt/root/recovery.rc
TARGET_PROVIDES_INIT_RC				:= true
BOARD_HAS_NO_RECOVERY_PARTITION			:= true

# GPU
BOARD_AVOID_DRAW_TEXTURE_EXTENSION		:= true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS		:= true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE		:= true
BOARD_EGL_CFG					:= device/samsung/cori/config/egl.cfg

# UMS
BOARD_USE_USB_MASS_STORAGE_SWITCH		:= true
TARGET_USE_CUSTOM_LUN_FILE_PATH			:= "/sys/devices/lm-2/gadget/lun"
BOARD_UMS_LUNFILE				:= "/sys/devices/lm-2/gadget/lun0/file"

# OTA
TARGET_OTA_ASSERT_DEVICE			:= GalaxyPocket,galaxypocket,GT-S5300,S5300,gt-s5300,s5300,Cori,cori

# Audio
TARGET_USE_SOFTWARE_AUDIO_AAC			:= true

# Camera
USE_CAMERA_STUB					:= true

# Other
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT		:= true
BOARD_USE_SCREENCAP				:= true
