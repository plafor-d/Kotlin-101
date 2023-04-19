import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'data_class.dart';

Future<Promo> createPromo(String login, String password) async {
  final response = await http.post(
    Uri.parse('https://auth.etna-alternance.net/identity'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "login": login,
      "password" : password,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200,
    // then parse the JSON.
    return Promo.fromJson(jsonDecode(response.body));
  } else {
    print(response);
    //     // If the server did not return a 200,
    // then throw an exception.
    throw Exception('Error');
  }
}

