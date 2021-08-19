// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<double> getPrice(String id) async {
  try {
    var url = "https://api.coingecko.com/api/v3/coins/" + id;
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    var value = json['market_data']['current_price']['lkr'].toString();
    return double.parse(value);
  } catch (e) {
    return 0.0;
  }
}
