#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CCSModuleProvider <NSObject>
@required
// 模块数量
- (NSUInteger)numberOfProvidedModules;
// 每个模块唯一标识符
- (NSString *)identifierForModuleAtIndex:(NSUInteger)index;
// 创建模块实例
- (id)moduleInstanceForModuleIdentifier:(NSString *)identifier;

@optional
// 显示名称
- (NSString *)displayNameForModuleIdentifier:(NSString *)identifier;
// 图标
- (UIImage *)settingsIconForModuleIdentifier:(NSString *)identifier;
// 是否提供设置页
- (BOOL)providesListControllerForModuleIdentifier:(NSString *)identifier;
@end