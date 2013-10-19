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
#

# inherit from the proprietary version
-include vendor/huawei/u8185/BoardConfigVendor.mk

# use a local header path
TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8185/include

# ARMv7-compatible processor
# CPU
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU := neon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := u8185
TARGET_OTA_ASSERT_DEVICE := u8185

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8150

# Browser
JS_ENGINE := v8

# USB mass storage
BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/u8150/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8185/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"' 

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# Graphics
TARGET_HARDWARE_3D := false
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/huawei/u8185/prebuilt/lib/egl/egl.cfg
BOARD_HAS_LIMITED_EGL := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_ELECTRONBEAM_FRAMES := 8

# WiFI
BOARD_WLAN_CHIP_AR6003 := true
BOARD_WLAN_ATHEROS_SDK := hardware/atheros/AR6kSDK.3.1/AR6kSDK.build_3.1_RC.734
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := AR6000
WIFI_DRIVER_MODULE_PATH := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME := ar6000

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/u8815
TARGET_KERNEL_CONFIG := cm_u8185_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=u8185
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a500000

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144 
