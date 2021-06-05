class CurrencyModel {
  double euro;
  double dolar;

  CurrencyModel({this.dolar = 0, this.euro = 0});

  factory CurrencyModel.fromJson(Map json) {
    return CurrencyModel(
      dolar: double.tryParse(json["USDBRL"]["low"]) ?? 0.0,
      euro: double.tryParse(json["EURBRL"]["low"]) ?? 0.0,
    );
  }
}
