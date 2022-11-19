import 'package:flutter/material.dart';

import '../config.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: Config.padding * 1.25),
      child: SizedBox(
        height: 32,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: Config.padding / 2),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
