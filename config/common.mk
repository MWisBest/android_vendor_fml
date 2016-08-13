## Common FML Config ##

# overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/fml/overlay/common


# FML init.rc
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/etc/init.fml.rc:root/init.fml.rc


# Boot animation
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip


# General props
PRODUCT_GMS_CLIENTID_BASE ?= android-google

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE) \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=false \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.setupwizard.enterprise_mode=1


# General packages
PRODUCT_PACKAGES += \
	CellBroadcastReceiver \
	Launcher3


# init.d support
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/bin/sysinit:system/bin/sysinit \
	vendor/fml/prebuilt/common/etc/init.d/00fml:system/etc/init.d/00fml


# xposed support
ifeq ($(USE_XPOSED_FRAMEWORK),true)
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/xposed.prop:system/xposed.prop

PRODUCT_PACKAGES += \
	XposedBridge \
	libxposed_art
endif
