import 'package:app_utilitario_ioasys/components/custom_currencyForm.dart';
import 'package:app_utilitario_ioasys/components/default_drawer.dart';
import 'package:app_utilitario_ioasys/controllers/conversor_controller.dart';
import 'package:flutter/material.dart';

class Conversor extends StatefulWidget {
  const Conversor({Key? key}) : super(key: key);
  static final String routeName = '/Conversor';

  @override
  _ConversorState createState() => _ConversorState();
}

class _ConversorState extends State<Conversor> {
  var _controller = ConversorController();

  @override
  void initState() {
    super.initState();
    _controller.repository.getCurrencyRealToDollarAndEuro().then((value) {
      //value = CurrencyModel()
      _controller.currency.dolar = value.dolar;
      _controller.currency.euro = value.euro;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: [
            Image.asset('assets/images/logo_home.png'),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Conversor de Moedas',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ]),
        ),
        body: CurrencyForm(
            realController: _controller.realController,
            dolarController: _controller.dolarController,
            euroController: _controller.euroController,
            realChanged: _controller.realChanged,
            dolarChanged: _controller.dolarChanged,
            euroChanged: _controller.euroChanged),
        drawer: DefaultDrawer());
  }
}
