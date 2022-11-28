import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ecommerce_gallery/api/api_path.dart';
import 'package:ecommerce_gallery/models/auth/login/login_model.dart';
import 'package:ecommerce_gallery/utlis/cash_helper.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  Future<LoginModel> loginData(String email, String password) async {
    final response = await http.post(Uri.parse(loginAuth),
        body: jsonEncode(
          {
            "email": email,
            "password": password,
          },
        ),
        headers: {'Content-Type': 'application/json'});

    var data = LoginModel.fromJson(jsonDecode(response.body));

   // CacheHelper.saveData('logintoken', data.message!.token);

    return data;
  }
}
