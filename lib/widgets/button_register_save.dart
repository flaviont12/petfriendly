import 'package:flutter/material.dart';

Padding btnCadastrar(String text){
  return Padding(
    padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
    child: Row(
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {},
                child: Text(text,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF07A5A8),
                    fixedSize: const Size(120.0, 50.0),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10.0))))),
      ],
    ),
  );
}