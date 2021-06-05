import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    Key? key,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 350,
      height: 50,
      padding: EdgeInsets.only(
        left: 20,
        right: 40,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        keyboardType: TextInputType.name,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xff767676),
        ),
        //style: TextStyle(height: 3.0, color: Colors.black),
        decoration: InputDecoration.collapsed(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          //border: OutlineInputBorder(
          //borderRadius: const BorderRadius.all(
          //const Radius.circular(30.0))),
        ),
      ),
    );
  }
}
