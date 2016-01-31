#
# Copyright (C) 2015 VRToxin Project
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

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

# VRToxin property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=20 \
    pm.sleep.mode=1 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=150 \
    debug.performance.tuning=1 \
    ro.ril.power_collapse=1 \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0 \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.adb.secure=1

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/vrtoxin/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/vrtoxin/overlay/$(TARGET_PRODUCT)

# APN
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Proprietary latinime lib needed for swyping
ifneq ($(filter vrtoxin_flounder vrtoxin_hammerhead vrtoxin_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

# Camera Effects
ifneq ($(filter vrtoxin_flounder vrtoxin_hammerhead vrtoxin_shamu vrtoxin_sprout4,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    vendor/vrtoxin/prebuilt/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/vrtoxin/prebuilt/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/vrtoxin/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Backuptool support
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/addon.d/50-vrtoxin.sh:system/addon.d/50-vrtoxin.sh \
    vendor/vrtoxin/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/vrtoxin/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/vrtoxin/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Telephony packages
ifneq ($(filter vrtoxin_angler vrtoxin_bullhead vrtoxin_flounder vrtoxin_hammerhead vrtoxin_shamu vrtoxin_sprout4,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    messaging
endif

# Additional Packages
PRODUCT_PACKAGES += \
    Eleven \
    Exchange2 \
    LockClock \
    OmniSwitch \
    VRToxinMods \
    KernelAdiutor

# VRToxin version
PRODUCT_VERSION_MAJOR = 3
PRODUCT_VERSION_MAINTENANCE = 0
ROM_VERSION := v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MAINTENANCE)-$(shell date +%Y%m%d)-$(VRTOXIN_BUILD)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.vrtoxin.version=$(ROM_VERSION) \
  ro.modversion=$(ROM_VERSION)
