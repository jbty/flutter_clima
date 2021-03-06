import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class NetworkHelper {
  final String url;

  NetworkHelper({@required this.url});

  Future getData() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.body);
    }
  }
}
