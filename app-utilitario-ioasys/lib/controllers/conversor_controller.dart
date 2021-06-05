import 'package:app_utilitario_ioasys/model/currency_model.dart';
import 'package:app_utilitario_ioasys/repository/currancy_repository.dart';
import 'package:flutter/material.dart';

class ConversorController {
  TextEditingController realController = TextEditingController();
  TextEditingController dolarController = TextEditingController();
  TextEditingController euroController = TextEditingController();
  var currency = CurrencyModel();
  var repository = CurrancyRepository();

  void realChanged(value) {
    var real = double.tryParse(value) ?? 0.0;
    dolarController.text = (real / currency.dolar).toStringAsFixed(2);
    euroController.text = (real / currency.euro).toStringAsFixed(2);
  }

  void dolarChanged(value) {
    var dolar = double.tryParse(value) ?? 0.0;
    realController.text = (dolar * currency.dolar).toStringAsFixed(2);
    euroController.text =
        (dolar * currency.dolar / currency.euro).toStringAsFixed(2);
  }

  void euroChanged(value) {
    var euro = double.tryParse(value) ?? 0.0;
    realController.text = (euro * currency.euro).toStringAsFixed(2);
    dolarController.text =
        (euro * currency.euro / currency.dolar).toStringAsFixed(2);
  }
}
