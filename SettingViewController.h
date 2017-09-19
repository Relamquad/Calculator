//
//  SettingViewController.h
//  Calculator
//
//  Created by Konstantin Kalivod on 9/9/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "SettingSingleton.h"



@interface SettingViewController : UIViewController

- (IBAction)switchNightMode:(UISwitch *)sender;
- (IBAction)switchSavingResult:(UISwitch *)sender;
- (IBAction)pressButtonSave:(UIButton *)sender;

@end
