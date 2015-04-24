# iOSModuleArchitecture
Quick example of how divide an app into module to respect the [SOLID](http://en.wikipedia.org/wiki/SOLID_%28object-oriented_design%29) principles based on the [VIPER architecture](http://www.objc.io/issue-13/viper.html).

In this application, there are two modules. The first one retrieve a model which contains a string from the (fake) remote data store in order to send the string and display it in the second module.


## How to start the app

After downloading the repository, be sure that you already installed [cocoapods](https://cocoapods.org/) and run the command `pod install` in the directory of the repository through a terminal. Then open the file named **iOSModuleArchitecture.xcworkspace**. 

## Class diagram
*This class diagram represents the modelization of the main module - FirstModule - of this app*

![class diagram](http://s14.postimg.org/g7de4nxsh/Passing_Data_class_diagram.png)

As you can see with the `stereotypes` on the class diagram there are different design patterns used in this module:
- [Builder](https://sourcemaking.com/design_patterns/builder)
- [Facade] (https://sourcemaking.com/design_patterns/facade)
- [Mediator] (https://sourcemaking.com/design_patterns/mediator)
- [Strategy] (https://sourcemaking.com/design_patterns/strategy)

## FAQ

**Q: How can I transfer objects from one module to another?**    
A: CoreData is the perfect tool for this. Send the string entity id of the stored object to your second module, then retrieve the object from core data using the entity id.

