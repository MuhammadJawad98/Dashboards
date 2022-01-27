import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.controller}) : super(key: key);
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon: const Icon(Icons.search),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: "Type in your text",
          fillColor: Colors.white70),
    );
  }
}
