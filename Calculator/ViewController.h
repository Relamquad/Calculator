//
//  ViewController.h
//  Calculator
//
//  Created by Konstantin Kalivod on 9/3/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelCalculator.h"
#import "SettingSingleton.h"

@interface ViewController : UIViewController
- (IBAction)ButtonOnePress:(UIButton *)sender;
- (IBAction)ButtonTwoPress:(UIButton *)sender;
- (IBAction)ButtonThreePress:(UIButton *)sender;
- (IBAction)ButtonFourPress:(UIButton *)sender;
- (IBAction)ButtonFivePress:(UIButton *)sender;
- (IBAction)ButtonSixPress:(UIButton *)sender;
- (IBAction)ButtonSevenPress:(UIButton *)sender;
- (IBAction)ButtonEightPress:(UIButton *)sender;
- (IBAction)ButtonNinePress:(UIButton *)sender;
- (IBAction)ButtonZeroPress:(UIButton *)sender;



@end

