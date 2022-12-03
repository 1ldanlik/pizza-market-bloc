import 'package:flutter/material.dart';

import '../config.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextField(
        controller: widget.controller,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: Config.padding / 2),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
