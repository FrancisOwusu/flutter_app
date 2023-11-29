import 'package:flutter/material.dart';
import 'package:itestapp/src/common_widgets/empty_placeholder_widget.dart';
import 'package:itestapp/src/localization/string_hardcoded.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: EmptyPlaceHolderWidget(
        message: '404 - Page not found!'.hardcoded,
      ),
    );
  }
}
