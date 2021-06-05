import 'package:flutter/material.dart';

class InputCurrency extends StatelessWidget {
  final String labelText;
  final String prefixText;
  final TextEditingController controllerText;
  final Function(String) onChanged;

  InputCurrency(
      {required this.labelText,
      required this.prefixText,
      required this.controllerText,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.number,
          controller: controllerText,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white),
            prefix: Text(prefixText),
            prefixStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(15)),
          ),
          onChanged: onChanged),
    );
  }
}
