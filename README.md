# iOSModuleArchitecture
Quick example of how divide an app into module to respect the SOLID principles.

In this application, there are two modules. The first one retrieve a model from the (fake) remote data store in order to display it in the second module when the button on the first button as been pressed.

## Class diagram

![class diagram](http://s4.postimg.org/duc917fr1/Passing_Data_class_diagram.png)

## FAQ

**Q: How can I transfer objects from one module to another?**    
A: CoreData is the perfect tool for this. Send the string entity id of the storred object to your second module, then retrieve the object from core data using the entity id.

