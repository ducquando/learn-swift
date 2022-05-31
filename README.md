# learn-swift

A guidance project on using Swift from CS308 Programming Languages at Fulbright University Vietnam
  
## General Information

Swift was *created on December 3, 2015, by Apple* in an attempt to replace the old-dying Objective-C for its application development purpose. However, in Stack Overflow's 2021 developer survey, only 5% of the community uses Swift regularly, which is a tiny percentage.

So, why learn Swift? If you are looking for an easy, interacting but powerful programming language, Swift is the right choice. Apple even advertises that anyone, even children having no experience with coding, can learn it. However, if you want to become an Apple developer, learning Swift is necessary.

Apple also creates a paired compiler to run Swift code called Xcode. You may find Xcode hard to use at first, but it will become much easier and more powerful when it continues being used. Additionally, SwiftUI, an UI development tool integrated into Xcode, is made in a way that runs and previews the code's result directly on an Apple device instead of a console or pop-up window like Python does.

There are many resources for developers who are investigating Swift, such as:

- [The Swift programming language](https://docs.swift.org/swift-book/) for a comprehensive language guide
- [Swift Playground](https://developer.apple.com/swift-playgrounds/) for interacting lessons on building apps using Swift
- [Swift Documentation](https://developer.apple.com/documentation/swift) for detailed documentation
- [Apple's GitHub](https://github.com/apple) for public source code


## Getting Started

Let's get the ball rolling, aren't we?
To code in Swift, you have to:

  1. Have a Mac (Swift cannot be run from a Window or Linux device)
  2. Have an Apple ID. If you have not created one, please visit [Apple ID](https://appleid.apple.com) and click on *Create Your Apple ID* on the top right of the screen to create an Apple ID. 
  3. Install [Xcode](https://developer.apple.com/xcode/) on your Mac (once again, Xcode is an Apple-developed compiler for Swift). On the site, you will find that there are 2 downloading options: *Download from Website* and *Download from Mac App Store*. For the beginner, I'd recommend you choose the latter (*Download from Mac App Store*) for convenience as it will install the newest version and all necessary tools. But if you want to choose the version (including both official and beta versions) of Xcode and manually install the additional tool, choose *Download from Website*. To be clear, the version I use for this tutorial is 13.2.1.<sup>1</sup>
  4. [optional] Clone this repository. The folder *Demo Code* provides many Swift codes shown in this guide for you to play around with. You may use Xcode to run the playground files. For instructions to preview code directly on Github, please refer to this section on [Code Preview](#code-preview)
  
Once you have done all steps, you are ready to begin.

<sup>1</sup> For more instructions on installing and running Xcode, please visit [Apple Developer: Xcode](https://developer.apple.com/documentation/xcode).

## Language Guide

This guide covers the following information on Swift:

1. [The Basics](/language-guide/1-the-basics.md)   
2. [Constants and Variables](/language-guide/2-constants-and-variables.md)   
3. [Basic Operators](/language-guide/3-basic-operators.md)   
4. [Short-circuit Evaluation](/language-guide/4-short-circuit-evaluation.md)   
5. [Selection Statements](/language-guide/5-selection-statements.md)   
6. [Iteration Statements](/language-guide/6-iteration-statements.md)   
7. [Control Transfer Statements](/language-guide/7-control-transfer-statements.md)   
8. [Functions](/language-guide/8-functions.md)   
9. [Recursion](/language-guide/9-recursion.md)   
10. [Instances](/language-guide/10-instances.md)   

## Demo Code

Above example codes are avaialable in the folder [*Code*](../../../tree/main/code). 

In the case of code preview on GitHub, each `.playground` folder will have multiple `.xcplaygroundpage` sub-folders associated with different language guide sections. Open a sub-folder, and find a `Content.swift` file. Open it to preview the example codes. However, I still prefer you to clone this repository and run the `.playground` file with a compiler such as Xcode.

## Project Guide

It's time to build our first Swift's program, a gallery showcasing students' projects and papers. This idea originates from the UX project called [Project Gallery](https://www.behance.net/gallery/120240899/Project-Gallery/modules/684326629) from CS303 Human-Computer Interaction at Fulbright University Vietnam. However, we will not build the mobile app version of that interface. In fact, this app will have a different user interface. Therefore, it will be renamed *Showcase* to respect the authors.

Some basic features of *Showcase*:
- Article showcasing on an user-centric GUI
- Article recommendation based on the agorithm comparing users' histories
- Article saving and flagging

Additionally, *Showcase* is a native-iOS app that supports:
- Color mode (light and dark) switching

On top of that, *Showcase* should also stores and fetchs data from the database, which adds these functions to the program:
- New article updation
- Article searching by titles
- User's sign-in

That is all for the first version of our first app built with Swift.

Since our app will communicate with a database, we decide to use the small, fast, and free SQL database engine called [SQLite](https://www.sqlite.org). This database holds all users' profiles along with associated articles, reading history, and direct messages. For the ease of wrapping SQLite query, we will use the framework developed by Stephen Celis called [SQLite.swift](https://github.com/stephencelis/SQLite.swift). We will clone their repository dicrectly to perform querying syntax.

Additionally, we will use SwiftUI, an Apple's declarative UI framework from Apple that enables developers to build native user interfaces for IOS apps. Since SwiftUI is a built-in framework, we must import it first. The importing syntax is: `import SwiftUI`.

That's all. Below is a peak of what will our app look like *(designed using Figma)*. If you are interested in this app, check [this repository on the app's code]().

![alt text](https://github.com/ducquando/learn-swift/blob/main/images/app_preview.png "Showcase app preview")


## References
Comi, M. (2016, April 20). *Struct-style printing of classes in Swift.* Medium. Retrieved April 18, 2022, from https://medium.com/swift-programming/struct-style-printing-of-classes-in-swift-7ee34f1c975a 

Inc., A. (2022). The Swift Programming Language (Swift 5.6). Retrieved March 25, 2022, from https://docs.swift.org/swift-book 

Overflow, S. (2021). *2021 Developer Survey*. Stack Overflow. Retrieved March 26, 2022, from https://insights.stackoverflow.com/survey/2021#section-most-popular-technologies-programming-scripting-and-markup-languages  

*Swift functions*. Programiz. (2022). Retrieved April 10, 2022, from https://www.programiz.com/swift-programming/functions  

Veen, T. in't. (2019). Chapter 9. Iterators, sequences, and collections. In *Swift in depth*. Manning. 
