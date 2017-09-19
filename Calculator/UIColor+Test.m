//
//  UIColor+Test.m
//  Calculator
//
//  Created by Konstantin Kalivod on 9/13/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "UIColor+Test.h"

@implementation UIColor (Test)

+ (UIColor *)myTestCOlour {
    return  [UIColor colorWithRed:
     96.0/255.0 green:135.0/255.0 blue:255.0/255.0 alpha:1.0];
}
+ (UIColor *)myTextFieldCOlour {
    return  [UIColor colorWithRed:
             96.0/255.0 green:135.0/255.0 blue:255.0/255.0 alpha:1.0];
}
+ (UIColor *)myNightModeCOlour {
    return  [UIColor colorWithRed:
             21.0/255.0 green:195.0/255.0 blue:22.0/255.0 alpha:1.0];
}
@end
