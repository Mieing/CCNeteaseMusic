#import "CCNeteaseMusicModule.h"
#import <UIKit/UIKit.h>

@implementation CCNeteaseMusicModule

- (UIImage *)iconGlyph {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    return [UIImage imageNamed:@"ModuleIcon" inBundle:bundle compatibleWithTraitCollection:nil];
}

- (UIImage *)selectedIconGlyph {
    return [self iconGlyph];
}

- (void)setSelected:(BOOL)selected {

    [super setSelected:selected];

    if (selected) {

        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            NSURL *url = [NSURL URLWithString:@"orpheus://identify"];
            if ([[UIApplication sharedApplication] canOpenURL:url]) {
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];

            }
            
            [super setSelected:NO];
        });
    }
}

@end