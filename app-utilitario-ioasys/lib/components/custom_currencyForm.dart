import 'package:flutter/material.dart';

import 'custom_currencyTextfield.dart';

class CurrencyForm extends StatelessWidget {
  final TextEditingController realController;
  final TextEditingController dolarController;
  final TextEditingController euroController;

  final Function(String) realChanged;
  final Function(String) dolarChanged;
  final Function(String) euroChanged;

  const CurrencyForm(
      {required this.realController,
      required this.dolarController,
      required this.euroController,
      required this.realChanged,
      required this.dolarChanged,
      required this.euroChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  child: Image.asset('assets/images/moeda.png'),
                ),
                InputCurrency(
                    labelText: 'Reais',
                    prefixText: 'R\$ ',
                    controllerText: realController,
                    onChanged: realChanged),
                InputCurrency(
                    labelText: 'Dólares',
                    prefixText: 'US\$ ',
                    controllerText: dolarController,
                    onChanged: dolarChanged),
                InputCurrency(
                    labelText: 'Euros',
                    prefixText: '\€ ',
                    controllerText: euroController,
                    onChanged: euroChanged)
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
