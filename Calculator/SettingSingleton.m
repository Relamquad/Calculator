//
//  SettingSingleton.m
//  Calculator
//
//  Created by Konstantin Kalivod on 9/9/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "SettingSingleton.h"


@implementation SettingSingleton

+ (instancetype)sharedInstance {
    static SettingSingleton *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[SettingSingleton alloc] init];
        // Do any other initialisation stuff here
        
        sharedInstance.nightMode = NO;
        sharedInstance.saveResult = YES;
        
    });
    return sharedInstance;
}


@end
