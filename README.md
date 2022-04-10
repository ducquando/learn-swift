# learn-swift

A guidance project on using Swift from CS308 Programming Languages at Fulbright University Vietnam
  
## General Information

Swift was *created on December 3, 2015, by Apple* on an attempt to replace the old-dying Objective-C for its application development purpose. However, in Stack Overflow's 2021 developer survey, only 5% of the community use Swift regularly, which is a very small percentage.

So, why learn Swift? If you are looking for an easy, interacting but powerful programming language, Swift is the right choice for you. Apple even advertises that anyone, even children having no experience with coding, can learn it. However, if you want to become an Apple developer, learning Swift is a must.

Apple also creates a paired compiler to run Swift code, which is named Xcode. You may find Xcode hard-to-use at first, but it will become mush easier and more powerful when continue being used. Additionally, SwiftUI, an UI development tool integrated in Xcode, is made in a way that runs and previews the code’s result directly on an Apple device instead of a console or pop-up window like Python does.

There are many resources for developers who are investigating Swift such as:
- [The Swift programming language](https://docs.swift.org/swift-book/) for a comprehensive language guide
- [Swift Playground](https://developer.apple.com/swift-playgrounds/) for interacting lessons on building apps using Swift
- [Swift Documentation](https://developer.apple.com/documentation/swift) for detailed documentation
- [Apple’s GitHub](https://github.com/apple) for public source code


## Getting Started

Let's get the ball rolling, aren't we?
To code in Swift, you have to:
  1. Have a Mac (Swift cannot be run from a Window or Linux device)
  2. Have an Apple ID. If you have not created one, please visit [Apple ID](https://appleid.apple.com) and click on *Create Your Apple ID* on the top right of the screen to create an Apple ID. 
  3. Install [Xcode](https://developer.apple.com/xcode/) on your Mac (once again, Xcode is an Apple-developed compiler for Swift). On the site, you will find that there are 2 downloading options: *Download from Website* and *Download from Mac App Store*. For beginner, I'd recommend you choosing the latter (*Download from Mac App Store*) for connivence as it will install the newest version along with all necessary tools. But if you want to choose the version (including both official and beta versions) of Xcode and manually install the additional tool, choose *Download from Website*. To be clear, the version I use for this tutorial is 13.2.1.<sup>1</sup>
  4. [optional] Clone this repository. The folder *Demo Code* provides many Swift codes, which are shown in this guide, for you to play around with. You may use Xcode to run the playground files. For instruction to preview code directly on Github, please refer to this section on [Code Preview](#code-preview)
  
Once you have done all steps, you are ready to begin.

<sup>1</sup> For more instruction on installing and running Xcode, please visit [Apple Developer: Xcode](https://developer.apple.com/documentation/xcode).

## Guide Structure
```
.
|__ code
|__ language guide
```
There are 2 folders:
- *code* contains example codes shown in language guide
- *language guide* contains my guidance to Swift, written in markdown.

For the convienience, code file will be named after the guidance file. Open folder [language guide](language%20guide) to begin.

### Code Preview
In case of code preview on GitHub, each `.playground` folder will have multiple `.xcplaygroundpage` sub-folders associated to different sections of the language guide.
Open a sub-folder and you will find a `Content.swift` file. Open it to preview the example codes. However, I still prefer you cloning this repository and running the `.playground` file with a compiler such as Xcode.

## References
Inc., A. (2022). *About Swift*. The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book

Overflow, S. (2021). *2021 Developer Survey*. Stack Overflow. Retrieved March 26, 2022, from https://insights.stackoverflow.com/survey/2021#section-most-popular-technologies-programming-scripting-and-markup-languages  
