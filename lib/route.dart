import 'package:flutter/material.dart';
import 'package:project1/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profil':
        return MaterialPageRoute(builder: (_) => Profil());
      case '/porto':
        return MaterialPageRoute(builder: (_) => PortofolioPage());
      case '/contc':
        return MaterialPageRoute(builder: (_) => ContactPage());
      case '/gal':
        return MaterialPageRoute(builder: (_) => Gallery());
      case '/set':
        return MaterialPageRoute(builder: (_) => Setting());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
