import 'package:flutter/material.dart';
CustomButton extends StatelessWidget {
  final String label;

  const CustomButton(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label),
    );
  }
}


@override
Widget build(BuildContext context) {
  return const Center(
    child: CustomButton('Hello'),
  );
}