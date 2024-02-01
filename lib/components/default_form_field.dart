import 'package:flutter/material.dart';

//TFF
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType keyType,
  Function(String)? onSubmit,
  Function(String)? onChanged,
  required String? Function(String?)? validate,
  required IconData prefix,
  required String label,
  IconData? suffix,
  bool isPassword = false,
  void Function()? suffixPressed,
}) =>
    SizedBox(
      width: 330,
      child: TextFormField(
        controller: controller,
        keyboardType: keyType,
        onFieldSubmitted: onSubmit,
        onChanged: onChanged,
        validator: validate,
        obscureText: isPassword,
        cursorColor: Color(0xff134161),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          filled: true,
          fillColor: Color(0xffd7e0e5),
          prefixIcon: Icon(
            prefix,
            color: const Color(0xff134161),
          ),
          suffixIcon: IconButton(
            onPressed: suffixPressed,
            icon: Icon(suffix),
            color: const Color(0xff134161),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
