import 'package:flutter/material.dart';

class AddNoteTitleWidget extends StatelessWidget {
  const AddNoteTitleWidget({
    super.key,
    required this.controller, required this.hint,
  });

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        hintText: hint,
      ),
      controller: controller,
    );
  }
}