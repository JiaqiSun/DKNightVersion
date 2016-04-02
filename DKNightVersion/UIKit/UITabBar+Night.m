//
//  UITabBar+Night.m
//  UITabBar+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UITabBar+Night.h"
#import "DKNightVersionManager.h"
#import <objc/runtime.h>

@interface UITabBar ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKColorPicker> *pickers;

@end

@implementation UITabBar (Night)


- (DKColorPicker)dk_barTintColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_barTintColorPicker));
}

- (void)dk_setBarTintColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_barTintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.barTintColor = picker();
    [self.pickers setValue:[picker copy] forKey:@"setBarTintColor:"];
}


@end
