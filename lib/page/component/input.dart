import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool read;
  
  const Input({
    super.key,
    required this.controller,
    required this.text,
    this.read = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: read,
      textAlign: TextAlign.end,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: text,
      ),
    );
  }
}