# iOSModuleArchitecture
Quick example of how divide an app into module to respect the SOLID principles.

In this application, there are two modules. The first one retrieve a model which contains a string from the (fake) remote data store in order to send the string and display it in the second module.

## Class diagram

![class diagram](http://s15.postimg.org/oi2p1jh8b/Passing_Data_class_diagram.png)

## FAQ

**Q: How can I transfer objects from one module to another?**    
A: CoreData is the perfect tool for this. Send the string entity id of the storred object to your second module, then retrieve the object from core data using the entity id.

