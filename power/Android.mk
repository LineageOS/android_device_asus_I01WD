LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power@1.2-service.asus_msmnile
LOCAL_MODULE_STEM := android.hardware.power@1.2-service
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_REQUIRED_MODULES := \
    android.hardware.power@1.2-service.asus_msmnile.rc

LOCAL_SRC_FILES := \
    power-common.c \
    power-msmnile.c \
    service.cpp \
    utils.c \
    Power.cpp

LOCAL_SHARED_LIBRARIES := \
    android.hardware.power@1.2 \
    libbase \
    libdl \
    libhidlbase \
    libhidltransport \
    liblog \
    libutils

LOCAL_CFLAGS += -Werror -Wall -Wextra

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power@1.2-service.asus_msmnile.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.power@1.2-service.rc

LOCAL_SRC_FILES := android.hardware.power@1.2-service.asus_msmnile.rc

include $(BUILD_PREBUILT)
