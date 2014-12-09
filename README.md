VBFPopFlatButton
================

Flat button with 21 different states and 2 types animated using [pop](https://github.com/facebook/pop).

These are some examples of both types in different states:


![Examples](https://raw.githubusercontent.com/iBaro/VBFPopFlatButton/master/examples.jpg)

And here you can see them animated:

![ButtonDribbble](https://d13yacurqjgara.cloudfront.net/users/381133/screenshots/1696580/vbfpopflatbutton3.gif)


##How to use it
Best way is using Cocoapods

    pod 'VBFPopFlatButton'
  

You can also clone and open example project.
The class you have to use is *VBFPopFlatButton* (subclass of UIButton). 
You will also find *VBFDoubleSegment* which is just a helping class.


Here there is some example code on how to use the button:

**Flat Rounded Style**

    //Example
    self.flatRoundedButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(100, 150, 30, 30)
                                                  buttonType:buttonMenuType
                                                 buttonStyle:buttonRoundedStyle]
                                                 animateToInitialState:YES;
    self.flatRoundedButton.roundBackgroundColor = [UIColor whiteColor];
    self.flatRoundedButton.lineThickness = 2;
    self.flatRoundedButton.tintColor = [UIColor flatPeterRiverColor];
    [self.flatRoundedButton addTarget:self
                               action:@selector(flatRoundedButtonPressed)
                     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.flatRoundedButton];


**Flat Plain Style**

    //Example
    self.flatPlainButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(200, 150, 30, 30)
                                                       buttonType:buttonAddType
                                                      buttonStyle:buttonPlainStyle
                                                      animateToInitialState:NO];
    self.flatPlainButton.lineThickness = 2;
    self.flatPlainButton.tintColor = [UIColor whiteColor];
    [self.flatPlainButton addTarget:self
                             action:@selector(flatPlainButtonPressed)
                   forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.flatPlainButton];

**Requested feature added on 0.0.5**
The designated initializer has changed to:

        - (instancetype)initWithFrame:(CGRect)frame 
                        buttonType:(FlatButtonType)initType 
                       buttonStyle:(FlatButtonStyle)bStyle 
            animateToInitialState:(BOOL)animateToInitialState;  

Adding the last 'animateToInitialState' boolean. Sending YES, the button will perform as in older versions (will animate on viewWillAppear from original type, represented as vertical line, to your initial type). Sending NO, the button will be presented using initial type with no animation on presentation.


In both cases, you can use the following method to animate the button from one state to the next:

    [flatRoundedButton animateToType:nextType];


This are the 20 types avaiable for the button:

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
    buttonOKType,
    buttonRewindType,
    buttonFastForwardType,
    buttonSquareType
    };

More types are welcomed :D

For more info, visit my blog [victorbaro.com](http://victorbaro.com/)
