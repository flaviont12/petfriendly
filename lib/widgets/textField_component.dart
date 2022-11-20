import 'package:flutter/material.dart';

Column reusableTextField(String nomeInput, bool isPasswordType, TextEditingController controller){
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(5, 15, 0, 5),
        child: Row(
          children: [
            Text(
              nomeInput,
              style: TextStyle(
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
            BorderSide(color: Color(0xFF07A5A8), width: 2.0),
          ),
          labelStyle: TextStyle(color: Colors.black),
          labelText: "",
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          filled: true,
          fillColor: Color(0xFFE7E6E9),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
            BorderSide(color: Color(0xFF07A5A8), width: 2.0),
          ),
          isDense: true,
        ),
        keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.text,
      ),
    ],
  );
}