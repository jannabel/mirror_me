import 'package:flutter/material.dart';

SizedBox customTextField(
    BuildContext context, String hinttxt, bool isPassword) {
  return SizedBox(
    height: 60,
    width: MediaQuery.of(context).size.width,
    child: TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        fillColor: const Color.fromARGB(255, 238, 239, 248),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        hintText: hinttxt,
      ),
    ),
  );
}
