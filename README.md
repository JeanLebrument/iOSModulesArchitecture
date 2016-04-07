# iOSModuleArchitecture

Questions and feedbacks are welcomed in the *issues* part of the repository!

## Introduction

Quick example of how divide an app into modules to respect the [SOLID](http://en.wikipedia.org/wiki/SOLID_%28object-oriented_design%29) principles based on the [VIPER architecture](http://www.objc.io/issue-13/viper.html).

In this application, there are two modules. The first one retrieve a model which contains a string from the (fake) remote data store in order to send the string and display it in the second module.


## How to start the app

After downloading the repository, be sure that you already installed [CocoaPods](https://cocoapods.org/) and run the command `pod install` in the directory of the repository through a terminal. Then open the file named **iOSModuleArchitecture.xcworkspace**.

## Architecture

- **Builder**: Builder design pattern in charge of the instantiation of the whole module.
- **IO**: Class that manage the input and the output of the module.
- **Wireframe**: Manages the instantiation of the view inside the window.
- **ViewController**: The ViewController displays the UI elements and sends the user interaction to the Presenter.
- **Presenter:** Mediator design pattern that drive the interactions between the ViewController, the Interactor and the IO. This class drives the user interaction depending on the type of action. (business logic or the changing of module)
- **Interactor:** Manages all the business logic of the module and handles the call to the Datastore to store and retrieve objects.
- **Datastore:** Communicates with the local storage and the remote storage by using the strategy design pattern.
- **Model:** Simply the data that will be transferred in the module.

## Class diagram
*This class diagram represents the modelization of the main module - FirstModule - of this app*

![class diagram](http://s14.postimg.org/g7de4nxsh/Passing_Data_class_diagram.png)

As you can see with the `stereotypes` on the class diagram there are different design patterns used in this module:
- [Builder](https://sourcemaking.com/design_patterns/builder)
- [Facade] (https://sourcemaking.com/design_patterns/facade)
- [Mediator] (https://sourcemaking.com/design_patterns/mediator)
- [Strategy] (https://sourcemaking.com/design_patterns/strategy)

## FAQ

**Q: Isn't it overkill such a decomposition?**  
A: I took the habit to always decompose the features of an app in modules. The decomposition shown in this repository is an example of a complete decomposition that respects SOLID principles. Feel free to adapt it to your project's requirements. Such an implementation permits to the modules to be interchangeable, highly scalable and highly abstracted. If you're afraid that you will take too much time to implement a whole app using this architecture keep in mind two facts. Firstly, you can create tools to automate the creation of module with all the boilerplate code. And you will loose less time to take the time to think to a *good-enough* architecture rather than program a cheap one and rewrite a lot of code when the first version of the project starts to be unmanageable.

**Q: How can I transfer objects from one module to another?**    
A: CoreData is the perfect tool for this. Send the string entity id of the stored object to your second module, then retrieve the object from core data using the entity id.

