#import "CCNeteaseMusicProvider.h"
#import "CCNeteaseMusicModule.h"
#import <UIKit/UIKit.h>

@implementation CCNeteaseMusicProvider

- (id)moduleInstanceForModuleIdentifier:(NSString *)identifier {
    if ([identifier isEqualToString:@"CCNeteaseMusic"]) {
        return [[CCNeteaseMusicModule alloc] init];
    }
    return nil;
}

// 模块数量
- (NSUInteger)numberOfProvidedModules {
    return 1;
}

// 模块唯一标识符
- (NSString *)identifierForModuleAtIndex:(NSUInteger)index {
    return (index == 0) ? @"CCNeteaseMusic" : nil;
}

// 模块在设置中的显示名称
- (NSString *)displayNameForModuleIdentifier:(NSString *)identifier {
    return [identifier isEqualToString:@"CCNeteaseMusic"] ? @"NeteaseMusic" : nil;
}

// 模块在设置中的图标
- (UIImage *)settingsIconForModuleIdentifier:(NSString *)identifier {
    if ([identifier isEqualToString:@"CCNeteaseMusic"]) {
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        return [UIImage imageNamed:@"SettingsIcon" inBundle:bundle compatibleWithTraitCollection:nil];
    }
    return nil;
}

@end