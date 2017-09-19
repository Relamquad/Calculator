//
//  UserDefaultManager.m
//  Calculator
//
//  Created by Konstantin Kalivod on 9/12/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "UserDefaultManager.h"
@interface UserDefaultManager()
@property NSUserDefaults *UserDefaults;
@end

@implementation UserDefaultManager

+(void)SaveUserName:(NSString *)Name{
    NSUserDefaults *UserDefaults = [NSUserDefaults standardUserDefaults];
    if (UserDefaults) {
        [UserDefaults setObject:Name forKey:@"UserName"];
        [UserDefaults synchronize];
    }

}
+(void)SaveUserPassword:(NSString *)Password{
    NSUserDefaults *UserDefaults = [NSUserDefaults standardUserDefaults];
    if (UserDefaults) {
        [UserDefaults setObject:Password forKey:@"UserPassword"];
        [UserDefaults synchronize];
    }
    
}
+(void)AccauntCheck:(NSString *)Name :(NSString *)Password{
    NSUserDefaults *UserDefaults = [NSUserDefaults standardUserDefaults];
    NSString *savedUsername = [UserDefaults stringForKey:@"UserName"];
    NSString *savedPassword = [UserDefaults stringForKey:@"UserPassword"];

}

@end
