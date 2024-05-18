import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';
import 'page6.dart';
import 'package:flutter/material.dart';
import 'main.dart'; // import the main file
import 'page1.dart'; // import the separate pages

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/page1':
        return MaterialPageRoute(builder: (_) => Page1());
      case '/page2':
        return MaterialPageRoute(builder: (_) => Page2());
      case '/page3':
        return MaterialPageRoute(builder: (_) => Page3());
      case '/page4':
        return MaterialPageRoute(builder: (_) => Page4());
      case '/page5':
        return MaterialPageRoute(builder: (_) => Page5());
      case '/page6':
        return MaterialPageRoute(builder: (_) => Page6());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR: Route not found'),
        ),
      );
    });
  }
}
