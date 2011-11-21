USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/p690/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := p690

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=gelato
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
#  adb shell cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00440000 00020000 "boot"
# mtd1: 0e600000 00020000 "system"
# mtd2: 00500000 00020000 "recovery"
# mtd3: 002c0000 00020000 "lgdrm"
# mtd4: 00100000 00020000 "splash"
# mtd5: 00100000 00020000 "FOTABIN"
# mtd6: 00640000 00020000 "FOTA"
# mtd7: 00040000 00020000 "misc"
# mtd8: 04000000 00020000 "cache"
# mtd9: 09f80000 00020000 "userdata"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0e600000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09f80000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/p690/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true