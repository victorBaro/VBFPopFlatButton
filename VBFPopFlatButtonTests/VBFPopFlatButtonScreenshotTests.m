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

describe(@"Forward Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonForwardType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"forwardButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"forwardButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonForwardType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"forwardButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"forwardButtonRound");
    });
});

describe(@"Menu Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonMenuType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"menuButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"menuButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonMenuType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"menuButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"menuButtonRound");
    });
});

describe(@"Download Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownloadType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downloadButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"downloadButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownloadType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downloadButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"downloadButtonRound");
    });
});

describe(@"Share Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonShareType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"shareButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"shareButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonShareType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"shareButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"shareButtonRound");
    });
});


SpecEnd