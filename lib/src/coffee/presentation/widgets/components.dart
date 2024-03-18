import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CoffeeSizeButton extends StatelessWidget {
  final String text;
  bool isSelected;
  void Function() onPressed;
  CoffeeSizeButton(
      {super.key,
      required this.text,
      this.isSelected = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
              backgroundColor: MaterialStatePropertyAll(
                  isSelected ? Colors.green : Colors.white)),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black, fontSize: 12),
          )),
    );
  }
}

class TypeSelection
 extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function(bool value) onChange;
  const TypeSelection
  (
      {super.key,
      required this.text,
      required this.onChange,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        children: [
          Container(
            height: 30,
            width: 50,
            child: Transform.scale(
              scale: 0.4,
              child: Switch(
                  splashRadius: BorderSide.strokeAlignCenter,
                  trackOutlineColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 211, 211, 211)),
                  activeColor: Colors.green,
                  value: isSelected,
                  onChanged: onChange),
            ),
          ),
          Container(
            width: 100,
            child: Text(
              text,
              overflow: TextOverflow.fade,
              style: TextStyle(
                  overflow: TextOverflow.fade,
                  color: Color.fromARGB(225, 205, 205, 205),
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
