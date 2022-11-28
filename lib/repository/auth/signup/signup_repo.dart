import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ecommerce_gallery/api/api_path.dart';
import 'package:ecommerce_gallery/utlis/cash_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/auth/signup/signup_model.dart';
import 'package:http/http.dart' as http;

class SignUpRepository {
  Future<SignUpModel> signupData(
      String name, String email, String password, String cityid) async {
    //var dio = Dio();
    final response = await http.post(Uri.parse(register),
        body: jsonEncode({
          'email': email,
          'password': password,
          "name": name,
          "city_id": cityid
        }),
        headers: {'Content-Type': 'application/json'});

    var data = SignUpModel.fromJson(jsonDecode(response.body));
  //   log('sign up token ${data.data?.token}');
  //  var setsignuptoken= CacheHelper.saveData('signuptoken', data.data?.token);
  //  log('sign up repo token ${setsignuptoken}');

    return data;
  }
}
