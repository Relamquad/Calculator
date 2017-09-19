//
//  ViewController.m
//  Calculator
//
//  Created by Konstantin Kalivod on 9/3/17.
//  Copyright © 2017 Kostya Kalivod. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Test.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *inputTextField;

@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
@property (weak, nonatomic) IBOutlet UIButton *buttonNine;
@property (weak, nonatomic) IBOutlet UIButton *buttonZero;
@property (weak, nonatomic) IBOutlet UIButton *buttonDot;


@property (nonatomic, strong) NSString *buttonPressValue;
@property (nonatomic) BOOL clear;

@property (weak, nonatomic) IBOutlet UIButton *buttonPlus;
@property (weak, nonatomic) IBOutlet UIButton *buttonMinus;
@property (weak, nonatomic) IBOutlet UIButton *buttonMulti;
@property (weak, nonatomic) IBOutlet UIButton *buttonDevine;


@property (strong, nonatomic) NSString *firstParam;
@property (assign, nonatomic) NSInteger action;
@property (strong, nonatomic) NSMutableArray *memory;

@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *colorViewsCalculation;



@end

@implementation ViewController


- (void)viewDidLoad {
    self.inputTextField.text = @"0";
    self.memory = [[NSMutableArray alloc] init];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    SettingSingleton *settingsStatus = [SettingSingleton sharedInstance];
    if (settingsStatus.nightMode) {
        self.view.backgroundColor = [UIColor blackColor];
        self.inputTextField.textColor = [UIColor myNightModeCOlour];
        for (UIButton *colorView in self.colorViewsCalculation) {
            colorView.backgroundColor = [UIColor myNightModeCOlour];
        }
    }
        else{
        self.inputTextField.textColor = [UIColor myTextFieldCOlour];
        self.view.backgroundColor = [UIColor whiteColor];
            for (UIButton *colorView in self.colorViewsCalculation) {
                colorView.backgroundColor = [UIColor myTestCOlour];
            }
}
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonPress:(NSString *)buttonPressValue {
    if ([self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = buttonPressValue;
    }else{
        self.inputTextField.text = [NSString stringWithFormat:@"%@%@", self.inputTextField.text, buttonPressValue];
    }
}

- (IBAction)ButtonOnePress:(UIButton *)sender {
    [self buttonPress:@"1"];
}

- (IBAction)ButtonTwoPress:(UIButton *)sender {
     [self buttonPress:@"2"];
}
- (IBAction)ButtonThreePress:(UIButton *)sender {
     [self buttonPress:@"3"];
}
- (IBAction)ButtonFourPress:(UIButton *)sender {
     [self buttonPress:@"4"];
}
- (IBAction)ButtonFivePress:(UIButton *)sender {
     [self buttonPress:@"5"];
}
- (IBAction)ButtonSixPress:(UIButton *)sender {
     [self buttonPress:@"6"];
}
- (IBAction)ButtonSevenPress:(UIButton *)sender {
     [self buttonPress:@"7"];
}
- (IBAction)ButtonEightPress:(UIButton *)sender {
     [self buttonPress:@"8"];
}
- (IBAction)ButtonNinePress:(UIButton *)sender {
     [self buttonPress:@"9"];
}
- (IBAction)ButtonZeroPress:(UIButton *)sender {
    if ((self.inputTextField.text.integerValue == 0) &&
        (![self.inputTextField.text containsString:@"."])) {
    } else {
        [self buttonPress:@"0"];
    }
}
- (IBAction)ButtonDotPress:(UIButton *)sender {
    if (![self.inputTextField.text containsString:@"."]) {
        [self buttonPress:@"."];
    }
}

- (IBAction)ButtonClearPress:(UIButton *)sender {
    self.inputTextField.text = @"0";
    self.firstParam = nil;
}

- (IBAction)ButtonEqualPress:(UIButton *)sender {
    NSString *result;
    
    switch (self.action) {
        case 1:
            result = [ModelCalculator calculatePlus:self.firstParam second:self.inputTextField.text];
            break;
        case 2:
            result = [ModelCalculator calculateMinus:self.firstParam second:self.inputTextField.text];
            break;
        case 3:
            result = [ModelCalculator calculateMultiply:self.firstParam second:self.inputTextField.text];
            break;
        case 4:
            result = [ModelCalculator calculateDevision:self.firstParam second:self.inputTextField.text];
            break;
    }
    [self setMemoryText];
    self.inputTextField.text = result;
    [self.memory addObject: result];

}

- (IBAction)ButtonPlusPress:(UIButton *)sender {
    self.firstParam = self.inputTextField.text;
    self.inputTextField.text = @"0";
    self.action = 1;
}

- (IBAction)ButtonMinusPress:(UIButton *)sender {
    self.firstParam = self.inputTextField.text;
    self.inputTextField.text = @"0";
    self.action = 2;
}

- (IBAction)ButtonMultiPress:(UIButton *)sender {
    self.firstParam = self.inputTextField.text;
    self.inputTextField.text = @"0";
    self.action = 3;
}

- (IBAction)ButtonDevinePress:(UIButton *)sender {
    self.firstParam = self.inputTextField.text;
    self.inputTextField.text = @"0";
    self.action = 4;
}
- (IBAction)ButtonLoginPress:(UIButton *)sender {
    [self performSegueWithIdentifier: @"LoginPage" sender: self];

}
-(void)setMemoryText{
    SettingSingleton *settingsStatus = [SettingSingleton sharedInstance];
    if (settingsStatus.saveResult) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@", self.memory];
        NSLog(@"%@", self.memory);}
        else {
            NSLog(@"Saving OFF");
    }
//    self.inputTextField.text = [NSString stringWithFormat:@"%@", self.memory];
//    NSLog(@"%@", self.memory);
}
@end
