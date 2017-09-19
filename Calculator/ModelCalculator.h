//
//  ModelCalculator.h
//  Calculator
//
//  Created by Konstantin Kalivod on 9/9/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelCalculator : NSObject
+(NSString *)calculatePlus:(NSString *)first second:(NSString *)second;
+(NSString *)calculateMinus:(NSString *)first second:(NSString *)second;
+(NSString *)calculateMultiply:(NSString *)first second:(NSString *)second;
+(NSString *)calculateDevision:(NSString *)first second:(NSString *)second;



@end
