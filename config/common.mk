## Common FML Config ##

# Superuser
#SUPERUSER_EMBEDDED := true
#SUPERUSER_PACKAGE_PREFIX := com.android.settings.fml.superuser

#PRODUCT_PACKAGES += \
#	Superuser \
#	su

#PRODUCT_PROPERTY_OVERRIDES += \
#	persist.sys.root_access=1

# Boot animation
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# FML init.rc
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/etc/init.fml.rc:root/init.fml.rc

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=false \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.setupwizard.enterprise_mode=1

# init.d support
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/bin/sysinit:system/bin/sysinit \
	vendor/fml/prebuilt/common/etc/init.d/00fml:system/etc/init.d/00fml

PRODUCT_PACKAGES += \
	CellBroadcastReceiver \
	Launcher3
