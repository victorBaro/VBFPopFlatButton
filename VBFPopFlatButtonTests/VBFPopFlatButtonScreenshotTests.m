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

describe(@"DownBasic Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownBasicType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downBasicButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"downBasicButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownBasicType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downBasicButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"downBasicButtonRound");
    });
});

describe(@"UpBasic Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonUpBasicType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"upBasicButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"upBasicButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonUpBasicType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"upBasicButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"upBasicButtonRound");
    });
});

describe(@"Down Arrow Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownArrowType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downArrowButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"downArrowButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownArrowType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downArrowButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"downArrowButtonRound");
    });
});

describe(@"Paused Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonPausedType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"pausedButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"pausedButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonPausedType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"pausedButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"pausedButtonRound");
    });
});

describe(@"Right Triangle Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonRightTriangleType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"rightTriangleButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"rightTriangleButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonRightTriangleType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"rightTriangleButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"rightTriangleButtonRound");
    });
});

describe(@"Left Triangle Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonLeftTriangleType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"leftTriangleButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"leftTriangleButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonLeftTriangleType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"leftTriangleButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"leftTriangleButtonRound");
    });
});

describe(@"Up Triangle Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonUpTriangleType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"upTriangleButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"upTriangleButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonUpTriangleType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"upTriangleButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"upTriangleButtonRound");
    });
});

describe(@"Down Triangle Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownTriangleType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downTriangleButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"downTriangleButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonDownTriangleType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"downTriangleButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"downTriangleButtonRound");
    });
});

describe(@"Ok Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonOkType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"okButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"okButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonOkType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"okButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"okButtonRound");
    });
});

describe(@"Rewind Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonRewindType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"rewindButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"rewindButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonRewindType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"rewindButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"rewindButtonRound");
    });
});

describe(@"FastForward Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonFastForwardType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"fastForwardButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"fastForwardButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonFastForwardType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"fastForwardButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"fastForwardButtonRound");
    });
});

describe(@"Square Button Type", ^{
    
    __block UIView *view;
    
    beforeEach(^{
        view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
        view.backgroundColor = [UIColor blueColor];
    });
    
    it(@"plain button matches plain button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonSquareType buttonStyle:buttonPlainStyle animateToInitialState:NO];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"squareButtonPlain");
        expect(view).to.haveValidSnapshotNamed(@"squareButtonPlain");
    });
    
    it(@"round default button matches round default button", ^{
        VBFPopFlatButton *button = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(50.0, 50.0, 40.0f, 40.0f) buttonType:buttonSquareType buttonStyle:buttonRoundedStyle animateToInitialState:NO];
        button.roundBackgroundColor = [UIColor whiteColor];
        button.tintColor = [UIColor blueColor];
        [view addSubview:button];
//        expect(view).to.recordSnapshotNamed(@"squareButtonRound");
        expect(view).to.haveValidSnapshotNamed(@"squareButtonRound");
    });
});

SpecEnd