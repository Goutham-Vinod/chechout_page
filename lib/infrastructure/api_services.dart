import 'dart:developer';

import 'package:checkout_screen_ui/core/config.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static fakeApiCall() async {
    final response = await http.get(
      Uri.parse(Config.fakeUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      log('Fake Api Call Success');
    }
  }
}
