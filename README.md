# projectadvflutter


<img src="https://github.com/user-attachments/assets/882982a3-df6d-418b-a3e2-f6b2c7546b55" heigth=25% width=25%>
<img src="https://github.com/user-attachments/assets/adc1babc-7fbc-4c8a-bb89-2535a413f491" heigth=25% width=25%>


https://github.com/user-attachments/assets/8c8167d4-654b-4005-aa5c-bb17f0b81be5


# Stepper:- 
• The Stepper Widget in Flutter is a versatile tool that plays a crucial role in enhancing user experience within mobile applications.

• It provides an intuitive way to guide users through a multi-step process, allowing developers to create interactive and user-friendly interfaces.
# State
## State:
* A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

* If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets.

## State management:
* The state management is one of the most popular and necessary processes in the lifecycle of an application.

* A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

* If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets. The setState() function allows us to set the properties of the state object that 
 triggers a redraw of the UI.

* There are Two way describe the state management?
-> Treditioinal state management -

State management refers to managing data across widgets, screens, and over time in a Flutter application.

# setState():-

* Provider state management -

* The Provider is a state management solution that extends and simplifies Inherited Widgets. It is a versatile and powerful state manager that allows you to deliver data to any widget in your app.

-> ChangeNotifer
-> ChangeNotiferProvider
-> Cousumer
-> ChangeNotifer
 * ChangeNotifier is a simple class, which provides change notification to its listeners.
 * It is easy to understand, implement, and optimized for a small number of listeners.
 * It is used for the listener to observe a model for changes.
 * In this, we only use the notifyListener() method to inform the listeners.
## Example:
```blash 

import 'package:flutter/material.dart';  
  
class Counter with ChangeNotifier 
{  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() 
  {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement()
  {  
     _counter--;  
     notifyListeners();  
  }  
}
```  
# ChangeNotiferProvider
* ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants.
* It comes from the provider package.
* The following code snippets help to understand the concept of ChangeNotifierProvider.
## Example:
```blash
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(builder: (context) => Counter()),  
        Provider(builder: (context) => SomeOtherClass()),  
      ],  
      child: MyApp(),  
    ),  
  );  
}
```
# Cousumer:-
* It is a type of provider that does not do any fancy work.
* It just calls the provider in a new widget and delegates its build implementation to the builder.
* The following code explains it more clearly.
## Example:
```blash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);
```


<img src="https://github.com/user-attachments/assets/0271e641-60fd-495d-821c-cac1e4091ba7" heigth=25% width=25%>
<img src="https://github.com/user-attachments/assets/c0152141-a305-4c04-8ee9-eaa0b2a3d64e" heigth=25% width=25%>


# ChangTheme:-
<img src="https://github.com/user-attachments/assets/c570082c-9be0-4311-88a6-f39fac42df04" heigth=25% width=25%>
<img src="https://github.com/user-attachments/assets/a831c4db-c7c1-4397-b227-77d7be22dd77" heigth=25% width=25%>

https://github.com/user-attachments/assets/ebe4b3f8-bab8-4e85-a514-07474354930b

# ChangeNotiferProvider:-
* ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants.
It comes from the provider package.
The following code snippets help to understand the concept of ChangeNotifierProvider.
## Provider & Change Theme using Provider
* Provider & Change Theme using Provider :-
* The Provider package, created by Remi Rousselet, aims to handle the state as cleanly as possible.
* In Provider, widgets listen to changes in the state and update as soon as they are notified.
* Provider State Management, which is recommended by Google as well, mainly provides you with a central point to manage the state, and to write front-end logic. A provider is a third-party library. Here, we need to understand three main concepts to use this library.


<img src= "https://github.com/user-attachments/assets/e0a52c76-d709-4b4e-b5a5-3b4a49f64d40" heigth=22% width= 28%>

https://github.com/user-attachments/assets/54953111-ad0e-456f-b60e-57c48c053915


# url_launcher:-


<img src="https://github.com/user-attachments/assets/60485682-cbb3-4c48-9c72-9f17519efbbb" heigth=22% width=28%>

<img src="https://github.com/user-attachments/assets/4e554be1-03be-4c3a-b281-f549b8d8fdc9" heigth=22% width=28%>

<img src="https://github.com/user-attachments/assets/c48e4a88-9faa-4347-a092-61316d322657" heigth=22% width=28%>

https://github.com/user-attachments/assets/7a45400b-39d4-4814-9768-afe899d45906





