import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, required this.label, required this.controller, required this.isPasswordType,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;
  final bool isPasswordType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
          child: Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        TextField(
          controller: controller,
          obscureText: isPasswordType,
          enableSuggestions: !isPasswordType,
          autocorrect: !isPasswordType,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
              const BorderSide(color: Color(0xFF07A5A8), width: 2.0),
            ),
            labelStyle: const TextStyle(color: Colors.black),
            labelText: "",
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            filled: true,
            fillColor: const Color(0xFFE7E6E9),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
              const BorderSide(color: Color(0xFF07A5A8), width: 2.0),
            ),
            isDense: true,
          ),
          keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.text,
        ),
      ],
    );
  }
}