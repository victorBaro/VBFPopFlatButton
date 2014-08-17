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


- (id)initWithLength:(CGFloat)length
           thickness:(NSInteger)lineThickness
               color:(UIColor *)lineColor
        initialState:(DoubleSegmentState)initState;

- (void) animateToState:(DoubleSegmentState)finalState;
- (void) animatePositionToPoint:(CGPoint)finalPosition;

@end
