import 'package:app_utilitario_ioasys/model/currency_model.dart';
import 'package:dio/dio.dart';

class CurrancyRepository {
  var _dio = Dio();
  var _urlRequest = 'https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL';

  Future<dynamic> getCurrencyRealToDollarAndEuro() async {
    try {
      var response = await _dio.get(_urlRequest);
      if (response.statusCode == 200) {
        return CurrencyModel.fromJson(response.data);
      } else {
        print(response.statusMessage);
      }
    } catch (error) {
      print(error);
      return CurrencyModel();
    }
  }
}
