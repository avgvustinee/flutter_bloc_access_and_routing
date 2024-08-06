import 'package:flutter/material.dart';
import 'package:flutter_bloc_access_and_routing/presentation/screen/home_screen.dart';
import 'package:flutter_bloc_access_and_routing/presentation/screen/second_screen.dart';
import 'package:flutter_bloc_access_and_routing/presentation/screen/third_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) =>
              const MyHomeScreen(title: 'HomeScreen', color: Colors.blueAccent),
        );

      case '/second':
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(
              title: 'SecondScreen', color: Colors.greenAccent),
        );

      case '/third':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(
              title: 'ThirdScreen', color: Colors.purpleAccent),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Page Not Found')),
            body: const Center(child: Text('404 - Page Not Found')),
          ),
        );
    }
  }
}
