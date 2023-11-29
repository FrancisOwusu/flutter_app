import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itestapp/src/routing/app_router.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () => context.goNamed(AppRoute.signIn.name),
              // onPressed: () => context.go('/login'),
              child: Image.network('https://picsum.photos/250?image=9')),
        ),
      ),
    );
  }
}
