import 'package:dio/dio.dart';

import '../category/Authentication/model/auth_model.dart';

class ApiServices {
  Dio dio = Dio();

  Future<AuthModel> login(
      {required String email, required String password}) async {
    final response = await dio.post(
      'https://student.valuxapps.com/api/login',
      data: {
        "email": email,
        "password": password,
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      if (jsonData['data'] != null) {
        AuthModel loginModel = AuthModel.fromJson(jsonData['data']);
        return loginModel;
      } else {
        throw Exception('Login failed: No data received');
      }
    } else {
      throw Exception('Login failed: ${response.statusMessage}');
    }
  }

  Future<AuthModel> signUp({
    required String name,
    required String email,
    required String password,
    required String cp,
  }) async {
    final response = await dio.post(
      'https://student.valuxapps.com/api/register',
      data: {
        "name": name,
        "password": password,
        "email": email,
        "confirmation password": cp,
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      if (jsonData['data'] != null) {
        AuthModel signUpModel = AuthModel.fromJson(jsonData['data']);
        return signUpModel;
      } else {
        throw Exception('Sign up failed: No data received');
      }
    } else {
      throw Exception('Sign up failed: ${response.statusMessage}');
    }
  }
}
