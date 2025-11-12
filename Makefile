TARGET := iphone:clang:16.5:13.7
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CCNeteaseMusic
CCNeteaseMusic_BUNDLE_EXTENSION = bundle
CCNeteaseMusic_FILES = CCNeteaseMusicProvider.m CCNeteaseMusicModule.m
CCNeteaseMusic_CFLAGS = -fobjc-arc
CCNeteaseMusic_PRIVATE_FRAMEWORKS = ControlCenterUIKit
CCNeteaseMusic_INSTALL_PATH = /Library/ControlCenter/CCSupport_Providers/

include $(THEOS_MAKE_PATH)/bundle.mk