VBFPopFlatButton
================

Flat button with 9 different states and 2 types animated using [pop](https://github.com/facebook/pop).

These are some examples of both types in different states:


![Examples](http://victorbaro.com/wp-content/uploads/2014/08/flatButton.png)

And here you can see them animated:
![ButtonDemo](http://victorbaro.com/wp-content/uploads/2014/08/flatButtonDemo.gif)



##How to use it
Best way is using Cocoapods

    Pod 'VBFPopFlatButton'
  

You can also clone and open example project.
The class you have to use is *VBFPopFlatButton* (subclass of UIButton). 
You will also find *VBFDoubleSegment* which is just a helping class.


Here there is some example code on how to use the button:

**Flat Rounded Style**

    //Example
        self.flatRoundedButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(100, 150, 30, 30)
                                                  buttonType:buttonMenuType
                                                 buttonStyle:buttonRoundedStyle];
    self.flatRoundedButton.roundBackgroundColor = [UIColor whiteColor];
    self.flatRoundedButton.lineThickness = 2;
    self.flatRoundedButton.linesColor = [UIColor flatPeterRiverColor];
    [self.flatRoundedButton addTarget:self
                               action:@selector(flatRoundedButtonPressed)
                     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.flatRoundedButton];


**Flat Plain Style**

    //Example
        self.flatPlainButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(200, 150, 30, 30)
                                                       buttonType:buttonAddType
                                                      buttonStyle:buttonPlainStyle];
    self.flatPlainButton.lineThickness = 2;
    self.flatPlainButton.linesColor = [UIColor whiteColor];
    [self.flatPlainButton addTarget:self
                             action:@selector(flatPlainButtonPressed)
                   forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.flatPlainButton];


In both cases, you can use the following method to animate the button from one state to the next:

    [flatRoundedButton animateToType:nextType];


This are the 9 types avaiable for the button:

    typedef NS_ENUM(NSInteger, FlatButtonType) {
    buttonDefaultType,             // Vertical line
    buttonAddType,                 // +
    buttonMinusType,               // -
    buttonCloseType,               // x
    buttonBackType,                // <
    buttonForwardType,             // >
    buttonMenuType,                 // 3horizontal lines
    buttonDownloadType,
    buttonShareType
    };

More types are welcomed :D

For more info, visit my blog [victorbaro.com](http://victorbaro.com/)
