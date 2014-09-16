//
//  VBFSegmentButton.m
//  VBFMaterialPopButton
//
//  Created by Victor Baro on 16/08/2014.
//  Copyright (c) 2014 Victor Baro. All rights reserved.
//

#import "VBFPopFlatButton.h"
#import "VBFDoubleSegment.h"

@interface VBFPopFlatButton () {
    NSMutableDictionary *_tintColors;
}

@property (nonatomic, strong) VBFDoubleSegment *firstSegment;
@property (nonatomic, strong) VBFDoubleSegment *secondSegment;
@property (nonatomic, strong) VBFDoubleSegment *thirdSegment; //Only used for menu button
@property (nonatomic, strong) CALayer *bckgLayer;
@end

@implementation VBFPopFlatButton

@dynamic linesColor;

- (instancetype)initWithFrame:(CGRect)frame {
    return [self initWithFrame:frame buttonType:buttonDefaultType buttonStyle:buttonPlainStyle];
}

- (instancetype) initWithFrame:(CGRect)frame buttonType:(FlatButtonType)initType buttonStyle:(FlatButtonStyle)bStyle {
    self = [super initWithFrame:frame];
    if (self) {
        self.currentButtonType = initType;
        self.currentButtonStyle = bStyle;
        self.lineThickness = 2;
        self.lineRadius = 0;
        self.tintColor = [UIColor whiteColor];
        [self commonSetup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.currentButtonType = buttonDefaultType;
        self.currentButtonStyle = buttonPlainStyle;
        self.lineThickness = 2;
        self.lineRadius = 0;
        self.tintColor = [UIColor whiteColor];
        [self commonSetup];
    }
    return self;
}

- (void) commonSetup {
    _firstSegment = [[VBFDoubleSegment alloc]initWithLength:self.frame.size.width
                                                  thickness:self.lineThickness
                                                     radius:self.lineRadius
                                                      color:self.tintColor
                                               initialState:doubleSegmentDefaultState];
    [self.layer addSublayer:_firstSegment];

    _secondSegment = [[VBFDoubleSegment alloc]initWithLength:self.frame.size.width
                                                   thickness:self.lineThickness
                                                      radius:self.lineRadius
                                                       color:self.tintColor
                                                initialState:doubleSegmentDefaultState];
    [self.layer addSublayer:_secondSegment];

    _thirdSegment = [[VBFDoubleSegment alloc]initWithLength:self.frame.size.width
                                                  thickness:self.lineThickness
                                                     radius:self.lineRadius
                                                      color:self.tintColor
                                               initialState:doubleSegmentMinusState];
    _thirdSegment.opacity = 0.0;
    [self.layer addSublayer:_thirdSegment];

    if (self.currentButtonStyle == buttonRoundedStyle) {
        [self setupBackgroundLayer];
    }

    [self animateToType:self.currentButtonType];
}

- (void)setupBackgroundLayer {
    self.bckgLayer = [CALayer layer];
    CGFloat amount = self.frame.size.width / 3;
    self.bckgLayer.frame = CGRectInset(self.bounds, -amount, -amount);
    self.bckgLayer.cornerRadius = self.bckgLayer.bounds.size.width/2;
    self.bckgLayer.backgroundColor = self.roundBackgroundColor.CGColor;

    [self.layer insertSublayer:self.bckgLayer below:_firstSegment];
}

- (void)setRoundBackgroundColor:(UIColor *)roundBackgroundColor {
    if (_currentButtonStyle == buttonRoundedStyle) {
        if (!self.bckgLayer) {
            [self setupBackgroundLayer];
        }
        self.bckgLayer.backgroundColor = roundBackgroundColor.CGColor;
    }
}
- (void)setLineThickness:(CGFloat)lineThickness {
    _firstSegment.lineThickness = lineThickness;
    _secondSegment.lineThickness = lineThickness;
    _thirdSegment.lineThickness = lineThickness;

    _lineThickness = lineThickness;
}
- (void)setLineRadius:(CGFloat)lineRadius
{
    _firstSegment.lineRadius = lineRadius;
    _secondSegment.lineRadius = lineRadius;
    _thirdSegment.lineRadius = lineRadius;

    _lineRadius = lineRadius;
}

- (void)setTintColor:(UIColor *)tintColor {
    [super setTintColor:tintColor];

    _firstSegment.lineColor = tintColor;
    _secondSegment.lineColor = tintColor;
    _thirdSegment.lineColor = tintColor;
}

- (void)setTintColor:(UIColor *)tintColor forState:(UIControlState)state {
    if (!_tintColors) {
        _tintColors = [NSMutableDictionary dictionary];
    }

    if (!tintColor) {
        [_tintColors removeObjectForKey:@(state)];
    }
    else {
        _tintColors[@(state)] = tintColor;
    }

    [self updateState];
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    [self updateState];
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    [self updateState];
}

- (void)setEnabled:(BOOL)enabled {
    [super setEnabled:enabled];
    [self updateState];
}

- (void)updateState {
    self.tintColor = [self tintColorForState:self.state];
}

- (UIColor *)tintColorForState:(UIControlState)state {
    UIColor *tint = _tintColors[@(self.state)];

    if (!tint) {
        //Fall back to UIControlStateNormal
        tint = _tintColors[@(UIControlStateNormal)];
    }

    if (!tint) {
        //Use current tint color
        tint = self.tintColor;
    }

    if (!tint) {
        //Fall back to window color
        tint = self.window.tintColor;
    }

    if (!tint) {
        //Fall back to default color
        tint = [UIColor whiteColor];
    }

    return tint;
}

- (void)animateToType:(FlatButtonType)finalType {
    self.firstSegment.opacity = 1.0f;
    self.secondSegment.opacity = 1.0f;
    self.thirdSegment.opacity = 0.0f;
    CGPoint firstOriginPoint = CGPointMake(CGRectGetWidth(self.frame)/2,
                                           CGRectGetHeight(self.frame)/2);
    CGPoint secondOriginPoint = firstOriginPoint;
    CGPoint thirdOriginPoint = firstOriginPoint;

    switch (finalType) {
        case buttonAddType:
            [self.firstSegment animateToState:doubleSegmentFirstQuadrantState];
            [self.secondSegment animateToState:doubleSegmentThridQuadrantState];
            break;
        case buttonBackType:
            [self.firstSegment animateToState:doubleSegmentLessThanState];
            [self.secondSegment animateToState:doubleSegmentLessThanState];
            self.secondSegment.opacity = 0.0;

            CGFloat hAmount = CGRectGetWidth(self.frame)/5;
            firstOriginPoint.x -= hAmount;
            secondOriginPoint.x -= hAmount;
            break;
        case buttonCloseType:
            [self.firstSegment animateToState:doubleSegmentLessThanState];
            [self.secondSegment animateToState:doubleSegmentMoreThanState];
            break;
        case buttonDefaultType:
            [self.firstSegment animateToState:doubleSegmentDefaultState];
            [self.secondSegment animateToState:doubleSegmentDefaultState];
            break;
        case buttonForwardType:
            [self.firstSegment animateToState:doubleSegmentMoreThanState];
            [self.secondSegment animateToState:doubleSegmentMoreThanState];
            self.secondSegment.opacity = 0.0;

            CGFloat horAmount = CGRectGetWidth(self.frame)/5;
            firstOriginPoint.x += horAmount;
            secondOriginPoint.x += horAmount;
            break;
        case buttonMenuType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment animateToState:doubleSegmentMinusState];
            [self.secondSegment animateToState:doubleSegmentMinusState];
            [self.thirdSegment animateToState:doubleSegmentMinusState];


            CGFloat verticalAmount = CGRectGetHeight(self.frame)/3;
            thirdOriginPoint.y -= verticalAmount;
            secondOriginPoint.y += verticalAmount;
            break;
        case buttonMinusType:
            [self.firstSegment animateToState:doubleSegmentMinusState];
            [self.secondSegment animateToState:doubleSegmentMinusState];
            break;
        case buttonDownloadType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment animateToState:doubleSegmentDefaultState];
            [self.secondSegment animateToState:doubleSegmentDownArrow];
            [self.thirdSegment animateToState:doubleSegmentMinusState];

            secondOriginPoint.y += self.bounds.size.width/2;
            thirdOriginPoint.y += self.bounds.size.width/2;
            break;
        case buttonShareType:
            [self.firstSegment animateToState:doubleSegmentDefaultState];
            [self.secondSegment animateToState:doubleSegmentUpArrow];

            secondOriginPoint.y -= self.bounds.size.width/2;
            break;
        default:
            break;
    }

    [self.firstSegment animatePositionToPoint:firstOriginPoint];
    [self.secondSegment animatePositionToPoint:secondOriginPoint];
    [self.thirdSegment animatePositionToPoint:thirdOriginPoint];

    self.currentButtonType = finalType;
}

#pragma mark - Deprecated

- (void)setLinesColor:(UIColor *)linesColor {
    [self setTintColor:linesColor];
}

- (UIColor *)linesColor {
    return self.tintColor;
}

@end
