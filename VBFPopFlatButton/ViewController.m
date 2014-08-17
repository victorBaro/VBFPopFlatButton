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
@property (nonatomic, strong) VBFPopFlatButton *flatButton;
@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor flatPeterRiverColor];
    
    self.flatButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(150, 150, 30, 30)
                                                  buttonType:buttonMenuType
                                                 buttonStyle:buttonRoundedStyle];
    self.flatButton.roundBackgroundColor = [UIColor whiteColor];
    self.flatButton.lineThickness = 2;
    self.flatButton.linesColor = [UIColor flatPeterRiverColor];
    [self.flatButton addTarget:self action:@selector(flatButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.flatButton];
}

- (IBAction)buttonPressed:(UIButton *)sender {
    if (sender.tag != 9) {
        [self.flatButton animateToType:sender.tag];
    } else {
        [self.flatButton animateToType:arc4random()%9];
    }
}

- (void) flatButtonPressed {
    NSLog(@"Button pressed");
    [self.flatButton animateToType:arc4random()%9];
}



@end
