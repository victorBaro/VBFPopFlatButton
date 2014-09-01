//
//  ViewController.m
//  VBFPopFlatButton
//
//  Created by Victor Baro on 16/08/2014.
//  Copyright (c) 2014 Victor Baro. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+FlatColors.h"
#import "VBFPopFlatButton.h"

@interface ViewController ()
@property (nonatomic, strong) VBFPopFlatButton *flatRoundedButton;
@property (nonatomic, strong) VBFPopFlatButton *flatPlainButton;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor flatPeterRiverColor];
    
    self.flatRoundedButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(100, 150, 30, 30)
                                                  buttonType:buttonMenuType
                                                 buttonStyle:buttonRoundedStyle];
    self.flatRoundedButton.roundBackgroundColor = [UIColor whiteColor];
    self.flatRoundedButton.lineThickness = 3;
    self.flatRoundedButton.lineRadius = 1;
    self.flatRoundedButton.tintColor = [UIColor flatPeterRiverColor];
    [self.flatRoundedButton addTarget:self
                               action:@selector(flatRoundedButtonPressed)
                     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.flatRoundedButton];
    
    
    self.flatPlainButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(200, 150, 30, 30)
                                                       buttonType:buttonAddType
                                                      buttonStyle:buttonPlainStyle];
    self.flatPlainButton.lineThickness = 2;
    self.flatPlainButton.tintColor = [UIColor whiteColor];
    [self.flatPlainButton addTarget:self
                             action:@selector(flatPlainButtonPressed)
                   forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.flatPlainButton];
}

- (IBAction)buttonPressed:(UIButton *)sender {
    if (sender.tag != 9) {
        [self.flatRoundedButton animateToType:sender.tag];
        [self.flatPlainButton animateToType:sender.tag];
    } else {
        [self.flatRoundedButton animateToType:arc4random()%9];
        [self.flatPlainButton animateToType:arc4random()%9];
    }
}

- (void) flatRoundedButtonPressed {
    NSLog(@"Button pressed");
    [self.flatRoundedButton animateToType:arc4random()%9];
}

- (void) flatPlainButtonPressed {
    NSLog(@"Button pressed");
    [self.flatPlainButton animateToType:arc4random()%9];
}

@end
