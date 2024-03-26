import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = '5a29ffb9e0d946c5be9211241241703';

  Future<void> getWeatherService({required String cityName}) async {
    Uri url = Uri.parse('$baseUrl/current.json?key=$apiKey&q=$cityName&aqi=no');

    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
  }
}
