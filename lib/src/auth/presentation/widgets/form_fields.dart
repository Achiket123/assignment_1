import 'package:assignment_1/cores/constants/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldMod extends StatelessWidget {
  final bool isPassword;
  final String hintText;
  final TextEditingController textEditingController;
  const TextFormFieldMod(
      {super.key,
      required this.hintText,
      this.isPassword = false,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppPalete.white))),
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return '$hintText is empty';
          }
          return null;
        },
        style: TextStyle(color: AppPalete.white),
        controller: textEditingController,
        obscureText: isPassword,
        cursorColor: AppPalete.white,
        decoration: InputDecoration(
            fillColor: AppPalete.white,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 14)),
      ),
    );
  }
}
