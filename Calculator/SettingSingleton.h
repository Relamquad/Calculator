//
//  SettingSingleton.h
//  Calculator
//
//  Created by Konstantin Kalivod on 9/9/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingSingleton : NSObject

@property (nonatomic, assign) BOOL nightMode;
@property (nonatomic, assign) BOOL saveResult;

+ (instancetype)sharedInstance;

@end
