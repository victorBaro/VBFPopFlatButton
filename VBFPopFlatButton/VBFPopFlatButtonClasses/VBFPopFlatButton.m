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
@property (nonatomic) BOOL animateToStartPosition;
@end

@implementation VBFPopFlatButton

@dynamic linesColor;

- (instancetype)initWithFrame:(CGRect)frame {
    return [self initWithFrame:frame buttonType:buttonDefaultType buttonStyle:buttonPlainStyle animateToInitialState:YES];
}

- (instancetype) initWithFrame:(CGRect)frame buttonType:(FlatButtonType)initType buttonStyle:(FlatButtonStyle)bStyle animateToInitialState:(BOOL)animateToInitialState{
    self = [super initWithFrame:frame];
    if (self) {
        self.currentButtonType = initType;
        self.currentButtonStyle = bStyle;
        self.lineThickness = 2;
        self.lineRadius = 0;
        self.animateToStartPosition = animateToInitialState;
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
        self.animateToStartPosition = YES;
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
            [self.firstSegment moveToState:doubleSegmentFirstQuadrantState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentThridQuadrantState animated:self.animateToStartPosition];
            break;
        case buttonBackType:
            [self.firstSegment moveToState:doubleSegmentLessThanState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentLessThanState animated:self.animateToStartPosition];
            self.secondSegment.opacity = 0.0;
            
            CGFloat hAmount = CGRectGetWidth(self.frame)/5;
            firstOriginPoint.x -= hAmount;
            secondOriginPoint.x -= hAmount;
            break;
        case buttonCloseType:
            [self.firstSegment moveToState:doubleSegmentLessThanState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentMoreThanState animated:self.animateToStartPosition];
            break;
        case buttonDefaultType:
            [self.firstSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            break;
        case buttonForwardType:
            [self.firstSegment moveToState:doubleSegmentMoreThanState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentMoreThanState animated:self.animateToStartPosition];
            self.secondSegment.opacity = 0.0;
            
            CGFloat horAmount = CGRectGetWidth(self.frame)/5;
            firstOriginPoint.x += horAmount;
            secondOriginPoint.x += horAmount;
            break;
        case buttonMenuType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            [self.thirdSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            
            
            CGFloat verticalAmount = CGRectGetHeight(self.frame)/3;
            thirdOriginPoint.y -= verticalAmount;
            secondOriginPoint.y += verticalAmount;
            break;
        case buttonMinusType:
            [self.firstSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            break;
        case buttonDownloadType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentDownArrow animated:self.animateToStartPosition];
            [self.thirdSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            
            secondOriginPoint.y += self.bounds.size.width/2;
            thirdOriginPoint.y += self.bounds.size.width/2;
            break;
        case buttonShareType:
            [self.firstSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentUpArrow animated:self.animateToStartPosition];
            
            secondOriginPoint.y -= self.bounds.size.width/2;
            break;
        case buttonDownBasicType:
            [self.firstSegment moveToState:doubleSegmentDownArrow animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentDownArrow animated:self.animateToStartPosition];
            self.secondSegment.opacity = 0.0;

            firstOriginPoint.y += CGRectGetHeight(self.firstSegment.frame)/5;
            break;
        case buttonDownArrowType:
            [self.firstSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentDownArrow animated:self.animateToStartPosition];
            secondOriginPoint.y += self.bounds.size.width/2;
            break;
        case buttonUpBasicType:
            [self.firstSegment moveToState:doubleSegmentUpArrow animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentUpArrow animated:self.animateToStartPosition];
            self.secondSegment.opacity = 0.0;

            firstOriginPoint.y -= CGRectGetHeight(self.firstSegment.frame)/5;
            break;
        case buttonPausedType:
            [self.firstSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            CGFloat horizontalAmount = CGRectGetHeight(self.frame)/5;
            firstOriginPoint.x -= horizontalAmount;
            secondOriginPoint.x += horizontalAmount;
            break;
        case buttonRightTriangleType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment moveToState:doubleSegmentSlashState60 animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentBackSlashState60 animated:self.animateToStartPosition];
            [self.thirdSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            firstOriginPoint.y -= self.bounds.size.width * 0.24;
            secondOriginPoint.y += self.bounds.size.width * 0.24;
            firstOriginPoint.x += self.bounds.size.width/8;
            secondOriginPoint.x += self.bounds.size.width/8;
            thirdOriginPoint.x -= self.bounds.size.width * 0.30;
            break;
        case buttonLeftTriangleType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment moveToState:doubleSegmentSlashState60 animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentBackSlashState60 animated:self.animateToStartPosition];
            [self.thirdSegment moveToState:doubleSegmentDefaultState animated:self.animateToStartPosition];
            firstOriginPoint.y += self.bounds.size.width * 0.24;
            secondOriginPoint.y -= self.bounds.size.width * 0.24;
            firstOriginPoint.x -= self.bounds.size.width/8;
            secondOriginPoint.x -= self.bounds.size.width/8;
            thirdOriginPoint.x += self.bounds.size.width * 0.30;
            break;
        case buttonUpTriangleType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment moveToState:doubleSegmentSlashState30 animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentBackSlashState30 animated:self.animateToStartPosition];
            [self.thirdSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            firstOriginPoint.x += self.bounds.size.width * 0.24;
            secondOriginPoint.x -= self.bounds.size.width * 0.24;
            firstOriginPoint.y -= self.bounds.size.width/8;
            secondOriginPoint.y -= self.bounds.size.width/8;
            thirdOriginPoint.y += self.bounds.size.width * 0.30;
            break;
        case buttonDownTriangleType:
            self.thirdSegment.opacity = 1.0;
            [self.firstSegment moveToState:doubleSegmentSlashState30 animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentBackSlashState30 animated:self.animateToStartPosition];
            [self.thirdSegment moveToState:doubleSegmentMinusState animated:self.animateToStartPosition];
            firstOriginPoint.x -= self.bounds.size.width * 0.24;
            secondOriginPoint.x += self.bounds.size.width * 0.24;
            firstOriginPoint.y += self.bounds.size.width/8;
            secondOriginPoint.y += self.bounds.size.width/8;
            thirdOriginPoint.y -= self.bounds.size.width * 0.30;
            break;
        case buttonOkType:
            self.thirdSegment.opacity = 0.0;
            [self.firstSegment moveToState:doubleSegmentBackSlashState45 animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentDownArrow animated:self.animateToStartPosition];
            firstOriginPoint.y 	+= self.bounds.size.width/6;
            secondOriginPoint.y += self.bounds.size.width/2;
            firstOriginPoint.x  += self.bounds.size.width * 0.19;
            secondOriginPoint.x -= self.bounds.size.width * 0.14;
            break;
        case buttonRewindType:
            [self.firstSegment moveToState:doubleSegmentLessThanState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentLessThanState animated:self.animateToStartPosition];
            
            firstOriginPoint.x -= self.bounds.size.width * 0.4;
            break;
        case buttonFastForwardType:
            [self.firstSegment moveToState:doubleSegmentMoreThanState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentMoreThanState animated:self.animateToStartPosition];
            
            firstOriginPoint.x += self.bounds.size.width * 0.4;
            break;
        case buttonSquareType:
            [self.firstSegment moveToState:doubleSegmentFourthQuadrantState animated:self.animateToStartPosition];
            [self.secondSegment moveToState:doubleSegmentSecondQuadrantState animated:self.animateToStartPosition];
            
            CGFloat offsetAmount = self.bounds.size.height/4 - self.lineThickness/4;
            firstOriginPoint.y -= offsetAmount;
            secondOriginPoint.y += offsetAmount;
            firstOriginPoint.x -= offsetAmount;
            secondOriginPoint.x += offsetAmount;
            break;


        default:
            break;
    }
    
    [self.firstSegment movePositionToPoint:firstOriginPoint animated:self.animateToStartPosition];
    [self.secondSegment movePositionToPoint:secondOriginPoint animated:self.animateToStartPosition];
    [self.thirdSegment movePositionToPoint:thirdOriginPoint animated:self.animateToStartPosition];
    
    if (!self.animateToStartPosition) {
        //Setting that line makes sure the above code is only NOT animated first time
        self.animateToStartPosition = YES;
    }
    _currentButtonType = finalType;
}

- (void)setCurrentButtonType:(FlatButtonType)currentButtonType {
    if (self.currentButtonType != currentButtonType) {
        [self animateToType:currentButtonType];
    }
}

#pragma mark - Deprecated

- (void)setLinesColor:(UIColor *)linesColor {
    [self setTintColor:linesColor];
}

- (UIColor *)linesColor {
    return self.tintColor;
}

@end
