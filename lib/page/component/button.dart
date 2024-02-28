import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  final Color color;
  final Color textColor;

  Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const CircleBorder(),
      elevation: 0.0,
      color: color,
      textColor: textColor,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}