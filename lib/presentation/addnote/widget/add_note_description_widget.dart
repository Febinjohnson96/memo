import 'package:flutter/material.dart';

class AddNoteDescription extends StatelessWidget {
  const AddNoteDescription({
    super.key,
    required this.controller,
    required this.hint,
  });
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 10,
      decoration: InputDecoration(hintText: hint),
    );
  }
}