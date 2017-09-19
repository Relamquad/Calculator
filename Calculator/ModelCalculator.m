//
//  ModelCalculator.m
//  Calculator
//
//  Created by Konstantin Kalivod on 9/9/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "ModelCalculator.h"

@implementation ModelCalculator
+(NSString *)calculatePlus:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    
    return [NSString stringWithFormat:@"%.2f", firstNumber + secondNumber];
}
+(NSString *)calculateMinus:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    
    return [NSString stringWithFormat:@"%.2f", firstNumber - secondNumber];
}
+(NSString *)calculateMultiply:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    
    return [NSString stringWithFormat:@"%.2f", firstNumber * secondNumber];
}
+(NSString *)calculateDevision:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    return [second isEqualToString:@"0"] ? @"ERROR" : [NSString stringWithFormat:@"%.2f", firstNumber / secondNumber];
}


@end
