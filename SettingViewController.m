//
//  SettingViewController.m
//  Calculator
//
//  Created by Konstantin Kalivod on 9/9/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "SettingViewController.h"
@interface SettingViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonSave;
@property (weak, nonatomic) IBOutlet UISwitch *nightModeSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *saveResultSwitch;
@end
@implementation SettingViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidLoad {
    [super viewDidLoad];
    SettingSingleton *settingsStatus = [SettingSingleton sharedInstance];
    [self.nightModeSwitch setOn:settingsStatus.nightMode];
    [self.saveResultSwitch setOn:settingsStatus.saveResult];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (IBAction)switchNightMode:(UISwitch *)sender {
}

- (IBAction)switchSavingResult:(UISwitch *)sender {
}


- (IBAction)pressButtonSave:(UIButton *)sender {
    
    SettingSingleton *settingsStatus = [SettingSingleton sharedInstance];
    
    settingsStatus.nightMode = self.nightModeSwitch.isOn;
    settingsStatus.saveResult = self.saveResultSwitch.isOn;
    
}



@end
