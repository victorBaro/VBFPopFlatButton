//
//  VBFSegmentButton.h
//  VBFMaterialPopButton
//
//  Created by Victor Baro on 16/08/2014.
//  Copyright (c) 2014 Victor Baro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VBFPopFlatButton : UIButton

typedef NS_ENUM(NSInteger, FlatButtonType) {
    buttonDefaultType,             // Vertical line
    buttonAddType,                 // +
    buttonMinusType,               // -
    buttonCloseType,               // x
    buttonBackType,                // <
    buttonForwardType,             // >
    buttonMenuType,                 // 3horizontal lines
    buttonDownloadType,
    buttonShareType,
    buttonDownBasicType,
    buttonUpBasicType,
    buttonDownArrowType,
    buttonPausedType,
    buttonRightTriangleType,
    buttonLeftTriangleType,
    buttonUpTriangleType,
    buttonDownTriangleType,
    buttonOkType,
    buttonRewindType,
    buttonFastForwardType,
    buttonSquareType,
};

typedef NS_ENUM(NSInteger, FlatButtonStyle) {
    buttonPlainStyle,
    buttonRoundedStyle
};

@property (nonatomic) FlatButtonType currentButtonType;
@property (nonatomic) FlatButtonStyle currentButtonStyle;

//BackgroundColor property for rounded style button only
@property (nonatomic, strong) UIColor *roundBackgroundColor;

@property (nonatomic) CGFloat lineThickness;
@property (nonatomic) CGFloat lineRadius;

@property (nonatomic, strong) UIColor *linesColor __deprecated_msg("Deprecated in favor of the tintColor property.");




//////////////////////////////
// DESIGNATED INITIALIZER   //
//////////////////////////////
- (instancetype)initWithFrame:(CGRect)frame
                   buttonType:(FlatButtonType)initType
                  buttonStyle:(FlatButtonStyle)bStyle
        animateToInitialState:(BOOL)animateToInitialState; // Feature requested by users -- Set to NO so the button will show initial position type with no animation

////////////////////////////////


- (void)setTintColor:(UIColor *)tintColor forState:(UIControlState)state;
- (UIColor *)tintColorForState:(UIControlState)state;
- (void)animateToType:(FlatButtonType)finalType;

@end
