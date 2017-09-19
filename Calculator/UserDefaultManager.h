//
//  UserDefaultManager.h
//  Calculator
//
//  Created by Konstantin Kalivod on 9/12/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultManager : NSObject
+(void)SaveUserName:(NSString *)Name;
+(void)SaveUserPassword:(NSString *)Password;
+(void)AccauntCheck:(NSString *)Name :(NSString *)Password;

@end
