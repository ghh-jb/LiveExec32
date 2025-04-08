ARCHS := arm64
TARGET := iphone:clang:16.2:15.2
#TARGET_CODESIGN = fastPathSign
PACKAGE_FORMAT := ipa

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = LiveExec32
#TOOL_NAME = LiveExec32

LiveExec32_FILES = \
  main.cpp arm_dynarmic_cp15.cpp dynarmic.cpp filesystem.cpp variables.cpp ap_getparents.cpp \
  bridge.mm bridge.s log.mm \
  HostFrameworks/Foundation/Foundation.mm \
  HostFrameworks/CoreGraphics/CoreGraphics.mm \
  HostFrameworks/UIKit/UIKit.mm
LiveExec32_CFLAGS = -Iinclude -DDYNARMIC_MASTER -Wno-error -std=c++17
LiveExec32_LDFLAGS = -Llib -ldynarmic
LiveExec32_CODESIGN_FLAGS = -Sentitlements.plist
#LiveExec32_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/application.mk
#include $(THEOS_MAKE_PATH)/tool.mk
