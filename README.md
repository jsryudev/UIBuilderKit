# UIBuilderKit

[![Version](https://img.shields.io/cocoapods/v/UIBuilderKit.svg?style=flat)](https://cocoapods.org/pods/UIBuilderKit)
[![License](https://img.shields.io/cocoapods/l/UIBuilderKit.svg?style=flat)](https://cocoapods.org/pods/UIBuilderKit)
[![Platform](https://img.shields.io/cocoapods/p/UIBuilderKit.svg?style=flat)](https://cocoapods.org/pods/UIBuilderKit)

🛠 UIKit's builder pattern.

## At a Glance

```swift
let textLabel = UILabel.Builder()
  .text("Hello, World!")
  .textAlignment(.center)
  .textColor(.black)
  .font(.italic)
  .build()
```

This is equivalent to

```swift
let label: UILabel = {
  let label = UILabel()
  label.text = "Hello, World!"
  label.textAlignment = .center
  label.textColor = .black
  label.font = .italicSystemFont(ofSize: 17)
  return label
}()
```

## Installation

UIBuilderKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIBuilderKit'
```

## Author

jsryudev, jsryu.dev@gmail.com

## License

UIBuilderKit is available under the MIT license. See the LICENSE file for more info.
