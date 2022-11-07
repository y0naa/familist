import 'package:familist/pages/super_page.dart';
import 'package:familist/utils/login_controller.dart';
import 'package:flutter/material.dart';

import '../pages/login_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginController());
      case '/home':
        return MaterialPageRoute(builder: (_) => const SuperPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}
