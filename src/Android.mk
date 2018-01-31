LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := usbmuxd
LOCAL_SRC_FILES := \
	device.c \
	client.c \
	preflight.c \
	log.c \
	usb.c \
	utils.c \
	conf.c \
	main.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../ \
	device/nexell/solution/carlife/libplist/include \
	device/nexell/solution/carlife/libusb/libusb \
	device/nexell/solution/carlife/libimobiledevice/include
LOCAL_CFLAGS := \
	-DHAVE_CLOCK_GETTIME \
	-DHAVE_CONFIG_H \
	-DANDROID
LOCAL_SHARED_LIBRARIES := \
	libplist \
	libusb1.0 \
	libimobilecommon \
	libimobiledevice

include $(BUILD_EXECUTABLE)
