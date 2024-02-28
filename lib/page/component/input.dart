import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool read;
  final double size;
  
  const Input({
    super.key,
    required this.controller,
    required this.text,
    required this.size,
    this.read = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: read,
      textAlign: TextAlign.end,
      controller: controller,

      style: TextStyle(
        fontSize: size,
      ),
      
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: text,
      ),
    );
  }
}