import 'package:flutter_dotenv/flutter_dotenv.dart' as _dotenv;

class ApiBaseConstants {
  static const String BASE_URL = 'https://api.weatherapi.com/v1/';
  static final Map<String, dynamic> queryParameters = {
    'key': _dotenv.env['API_KEY']
  };
}
