LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lights.msmnile
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := lights.c

LOCAL_SHARED_LIBRARIES := liblog

LOCAL_CFLAGS += -Werror -Wall -Wextra

include $(BUILD_SHARED_LIBRARY)
