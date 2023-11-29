import 'package:flutter/material.dart';
import 'package:itestapp/src/routing/app_router.dart';
import '../src/pages/home.dart';
import '../src/pages/register.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// The route configuration.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Retrieve Text Input',
      routerConfig: router,
      // home: MyCustomForm(),
    );
  }
}
