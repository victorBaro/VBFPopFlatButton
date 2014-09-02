//
//  VBFDoubleSegment.h
//  VBFMaterialPopButton
//
//  Created by Victor Baro on 31/07/2014.
//  Copyright (c) 2014 Victor Baro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface VBFDoubleSegment : CALayer


typedef NS_ENUM(NSInteger, DoubleSegmentState) {
    doubleSegmentDefaultState,          // Vertical line
    doubleSegmentFirstQuadrantState,    // |_
    doubleSegmentSecondQuadrantState,   // _|
    doubleSegmentThridQuadrantState,    // -|
    doubleSegmentFourthQuadrantState,   // |-
    doubleSegmentLessThanState,         // <
    doubleSegmentMoreThanState,         // >
    doubleSegmentUpArrow,               // ^
    doubleSegmentDownArrow,             // Before symol upside-down
    doubleSegmentMinusState             // --
};

@property (nonatomic) DoubleSegmentState segmentState;

@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic) CGFloat lineThickness;
@property (nonatomic) CGFloat lineRadius;


- (instancetype)initWithLength:(CGFloat)length
           thickness:(CGFloat)lineThickness
              radius:(CGFloat)lineRadius
               color:(UIColor *)lineColor
        initialState:(DoubleSegmentState)initState;

- (void) animateToState:(DoubleSegmentState)finalState;
- (void) animatePositionToPoint:(CGPoint)finalPosition;

@end
