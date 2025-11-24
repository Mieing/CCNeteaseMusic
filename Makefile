TARGET := iphone:clang:16.5:13.7
INSTALL_TARGET_PROCESSES = SpringBoard
DEBUG = 0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CCNeteaseMusic

CCNeteaseMusic_FILES = CCNeteaseMusic.m
CCNeteaseMusic_BUNDLE_EXTENSION = bundle
CCNeteaseMusic_PRIVATE_FRAMEWORKS = ControlCenterUIKit
CCNeteaseMusic_INSTALL_PATH = /Library/ControlCenter/Bundles

include $(THEOS_MAKE_PATH)/bundle.mk