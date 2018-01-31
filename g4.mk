
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/g4-common/g4-common-vendor.mk)

# Include system  properties file
include $(LOCAL_PATH)/system.prop

# Inherits fdroid
$(call inherit-product-if-exists, vendor/fdroid/fdroid-vendor.mk)

# AUDIO
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl \
    audiod \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libtinyalsa \
    libtinycompress \
    libtinyxml \
    tinymix \
    audio.a2dp.default \
    audio.primary.msm8992 \
    audio.r_submix.default \
    audio.usb.default \
    audio_amplifier.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes_drc.xml:system/vendor/etc/audio_policy_volumes_drc.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qvr.xml:system/etc/mixer_paths_qvr.xml \
    $(LOCAL_PATH)/audio/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:system/etc/mixer_paths_tavil.xml \
    $(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# BLUETOOTH
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor \
    libbt-brcm_a2dp \
    hwaddrs \
    libprotobuf-cpp-full

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# BOOTLOADER
PRODUCT_PACKAGES += \
    android.hardware.oemlock@1.0-service

# CAMERA
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.4-external-service \
    camera.default \
    libqomx_core \
    mm-qcamera-app \
    libmm-qcamera

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml \

# CHARGER
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_scale.png:root/res/images/charger/battery_scale.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png

# CONFIGSTORE
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service

# CONSUMERIR
TARGET_PROVIDES_CONSUMERIR_HAL := true

PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    consumerir.msm8992 

# DISPLAY
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    copybit.msm8992 \
    gralloc.msm8992 \
    hwcomposer.msm8992 \
    memtrack.msm8992 \
    lights.msm8992 \
    liboverlay \
    libhdmi \
    libqdutils \
    libqservice

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# FILESYSTEM
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

# GATEKEEPER
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# GLOVEMODE
PRODUCT_PACKAGES += \
    GloveMode

# GOOGLE CAMERA
PRODUCT_PACKAGES += \
    GCam

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    gps.msm8992 \
    quipc.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# INIT
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.power.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc \
    init.qcom.coex.sh \
    init.qcom.fm.sh \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qcom.uicc.sh \
    init.msm8992.sensor.sh \
    init.baseband.sh \
    init.qcom.bt.sh \
    init.qcom.usb.sh \
    init.qcom.qseecomd.sh \
    wrild.sh \
    sysctl.rc \
    sysctl.conf

# IPA
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml

# KERNEL MODULES
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/modules/mcDrvModule.ko:/system/lib/modules/mcDrvModule.ko \
    $(LOCAL_PATH)/configs/modules/mcKernelApi.ko:/system/lib/modules/mcKernelApi.ko

# KEYMASTER
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-impl:64

# LIVEDISPLAY
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-legacymm

# LIVE WALLPAPER
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	VisualizationWallpapers \
	librs_jni

# MEDIA/OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libstagefright_soft_flacdec

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# MP-CTL
PRODUCT_PACKAGES += \
    libqti-perfd \
    libqti-perfd-client \
    perfd \
    libqti-perfd-client

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Tag \
    NfcNci

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:system/vendor/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:system/vendor/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/vendor/etc/nfcee_access.xml

# OVERLAY
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# PERMISSIONS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:system/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml

# POWER
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-convert \
    android.hardware.health@1.0-impl \
    android.hardware.health@1.0-service \
    android.hardware.power@1.1-service-qti \
    power.msm8992

# RADIO
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libnl_2 \
    libbson \
    libcnefeatureconfig \
    libqsap_sdk \
    librmnetctl \
    libxml2 \
    android.system.net.netd@1.0

# RENDERSCRIPT
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0-impl \
    android.hardware.radio@1.0-service \
    android.hardware.radio.deprecated@1.0-impl \
    android.hardware.radio.deprecated@1.0-service \
    librmnetctl \
    libsecril-client-sap \
    libprotobuf-cpp-full \
    libmdmdetect \
    rild_socket \
    libxml2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qcril.db:system/etc/motorola/qcril.db \
    $(LOCAL_PATH)/configs/qmi_fw.conf:system/etc/qmi_fw.conf \
    $(LOCAL_PATH)/configs/ctbk_val.cfg:system/etc/motorola/mdmctbk/ctbk_val.cfg \
    $(LOCAL_PATH)/configs/carrierconfig-com.android.carrierconfig-89300100160427481402.xml:data/user_de/0/com.android.phone/files/carrierconfig-com.android.carrierconfig-89300100160427481402.xml

# SECCOMP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# SECURITY
PRODUCT_PACKAGES += \
    libcurl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# SENSORS
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/sensor_def_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_common.conf \
    $(LOCAL_PATH)/sensors/sensor_def_variable.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_variable.conf \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors_dbg_config.txt:persist/sensors/sensors_dbg_config.txt

# SHIMS
PRODUCT_PACKAGES += \
    libcne_shim \
    libqsap_shim \
    libcamera_shim \
    libshim_cameraclient

# TORCH TILE: rootless workaround
PRODUCT_PACKAGES += \
    Flashlight

# THERMAL
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service \
    thermal.msm8992

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine-8992.conf

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# VIBRATOR
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# WIFI
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi.offload@1.0-service \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    readmac \
    wificond \
    wifilogd \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:/system/vendor/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:/system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:/system/vendor/etc/wifi/p2p_supplicant_overlay.conf
