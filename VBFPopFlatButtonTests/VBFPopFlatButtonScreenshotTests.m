//
//  VBFPopFlatButtonScreenshotTests.m
//  VBFPopFlatButton
//
//  Created by Raimon Lapuente on 18/04/2015.
//  Copyright (c) 2015 Victor Baro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VBFPopFlatButton.h"

#define EXP_SHORTHAND
#include <Specta/Specta.h>
#include <Expecta/Expecta.h>
#include <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>

#define test_expect(a) [expect(a) test]
#define assertPass(expr) \
XCTAssertNoThrow((expr))

SpecBegin(VBFPopFlatButton)

describe(@"Default Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDefaultType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"plainButtonDefaultType");
        expect(view).to.haveValidSnapshotNamed(@"plainButtonDefaultType");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDefaultType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"roundButtonDefaultType");
        expect(view).to.haveValidSnapshotNamed(@"roundButtonDefaultType");
    });
});

describe(@"Add Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonAddType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"addButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"addButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonAddType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"addButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"addButtonRound");
    });
});

describe(@"Minus Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonMinusType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"minusButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"minusButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonMinusType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"minusButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"minusButtonRound");
    });
});

describe(@"Close Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonCloseType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//                expect(view).to.recordSnapshotNamed(@"closeButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"closeButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonCloseType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//                expect(view).to.recordSnapshotNamed(@"closeButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"closeButtonRound");
    });
});

describe(@"Back Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonBackType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"backButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"backButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonBackType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"backButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"backButtonRound");
    });
});
SpecEnd