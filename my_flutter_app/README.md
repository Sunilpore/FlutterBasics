# my_flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

//-------------------------------------------------------------------------------//
Shortcuts
. CNTL+Q -> to check different colors contrast of color
//-------------------------------------------------------------------------------//

Reference Author Project Github code
https://github.com/iamshaunjp/flutter-beginners-tutorial

1.Add SafeArea Widget
https://api.flutter.dev/flutter/widgets/SafeArea-class.html
https://stackoverflow.com/questions/49227667/using-safearea-in-flutter

2. Routes and Map, Navigator
  I] Routes -> Used to decide launching navigator flow of an screen
  II] Map -> consist of key,value pair. See example in route
  III] Navigator -> use to navigate from one widget screen to other screen

3.  Widget Lifecycle
  I] initState -> Called only once when the widget is created
                  Subscribe to streams or any object that could change our widget data

  II] build -> Builds the widget tree
               A build is triggered every time we use setState()

  III] dispose -> Called only when the widget/state object is removed

4. Async and await function

    //Dart library packages
    https://pub.dev/packages/http

    //free sample apis to test api call
    https://jsonplaceholder.typicode.com/

    //World Timer API
    http://worldtimeapi.org/pages/examples

5. Code segregation
  - Add service packages for api call
  - Use Future scope to retrieve async response via variable

6. Add Navigator
  - used pushedName, pushReplacementNamed and also passed the arguments

7. Date Format Library
  - Integrate dateformat library to display date in user friendly dateformat
  - Display passed argument data on Home Widget