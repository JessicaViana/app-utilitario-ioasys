import 'dart:math';
import 'package:app_utilitario_ioasys/components/default_drawer.dart';
import 'package:flutter/material.dart';

class ImcCalculator extends StatefulWidget {
  ImcCalculator({Key? key}) : super(key: key);
  static final String routeName = '/ImcCalculator';

  @override
  _ImcCalculatorState createState() => _ImcCalculatorState();
}

class _ImcCalculatorState extends State<ImcCalculator> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  late double valorPeso;
  late double valorAltura;
  late double imc;
  late String resultadoImc;
  String mensagem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/logo_home.png'),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Calculadora IMC',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 80),
              child: Icon(
                Icons.restart_alt_rounded,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 36, bottom: 46),
                child: Image.asset('assets/images/user.png'),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(
                  start: 46.5,
                  end: 28.5,
                ),
                height: 59,
                child: TextField(
                  controller: peso,
                  decoration: InputDecoration(
                    hintText: 'Peso (kg)',
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff767676),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 38.5),
                padding: EdgeInsetsDirectional.only(
                  start: 46.5,
                  end: 28.5,
                ),
                height: 50,
                child: TextField(
                  controller: altura,
                  decoration: InputDecoration(
                    hintText: 'Altura (cm)',
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff767676),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 50,
                margin: EdgeInsets.only(top: 33.5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        primary: Theme.of(context).primaryColor),
                    onPressed: () {
                      onTap();
                    },
                    child: Text('Calcular',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Text(
                  mensagem,
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: DefaultDrawer(),
    );
  }

  dynamic calculaImc() {
    imc = valorPeso / pow(valorAltura, 2);
    resultadoImc = imc.toStringAsFixed(2);
    if (imc < 18.6) {
      mensagem = 'Você está baixo do Peso ($resultadoImc)';
    } else if (imc > 18.6 && imc < 24.9) {
      mensagem = 'Você está no seu Peso Ideal ($resultadoImc)';
    } else if (imc > 24.9 && imc < 29.9) {
      mensagem = 'Você está Levemente acima do Peso ($resultadoImc)';
    } else if (imc > 29.9 && imc < 34.9) {
      mensagem = 'Você está com Obesidade Grau I ($resultadoImc)';
    } else if (imc > 34.9 && imc < 39.9) {
      mensagem = 'Você está com Obesidade Grau II ($resultadoImc)';
    } else if (imc > 39.9) {
      mensagem = 'Você está com Obesidade Grau III ($resultadoImc)';
    } else {
      mensagem = 'Entrada inválida';
    }
  }

  void onTap() {
    setState(() {
      valorPeso = double.parse(peso.text);
      valorAltura = double.parse(altura.text);

      calculaImc();
    });
  }
}
