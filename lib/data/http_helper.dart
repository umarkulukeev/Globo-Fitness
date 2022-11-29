import 'package:fitness/data/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = 'f5001a9dc655d85aa2f6c2b1b8c21444';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parametres = {'q':location, 'appId':apiKey};
    Uri uri = Uri.https(authority, path, parametres);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);

    return weather;
  }
}