UIColor+FlatColors
==================

`UIColor+FlatColors` is a category that extends `UIColor` with methods to get the colors from the [Flat UI](http://designmodo.github.io/Flat-UI/) framework by [designmodo](http://designmodo.com/).

That's it.

<img src="https://raw.githubusercontent.com/mokagio/UIColor-FlatColors/master/screenshot.png" />

I suggest you take a look at [FlatUIKit](https://github.com/Grouper/FlatUIKit) if you are looking for the full components of the Flat UI framework to use in your app.

## Installation with CocoaPods

```ruby
platform :ios

pod 'UIColor+FlatColors'
```

## Usage

Get the colors from a `UIColor` class method following this naming pattern: `flat<# color_name #>Color`. To see all the available colors check [flatuicolors.com](http://flatuicolors.com/).

```objc
someViewYouWantToColor.backgroundColor = [UIColor flatEmeraldColor];
```

## License

`UIColor+FlatColors` is released under the [MIT license](https://github.com/mokagio/UIColor-FlatColors/blob/master/LICENSE).

---

Hacked together with passion by [@mokagio](https://twitter.com/mokagio)



