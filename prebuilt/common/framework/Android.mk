LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := XposedBridge
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := XposedBridge.jar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
