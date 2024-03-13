import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../config/api_end_points.dart';
import '../../../data/models/user.dart';
import '../../../data/models/user_auth.dart';
import '../../exceptions/apis/bad_request_exception.dart';
import '../../exceptions/apis/unauthorized_exception.dart';
import '../../exceptions/apis/unknown_exception.dart';

class AuthenticationAPI {
  Future<UserAuth> login(User user) async {
    var result = await http.post(
      Uri.parse(ApiEndPoint.login),
      body: {
        "email": user.email,
        "password": user.password,
      },
    );

    var json = jsonDecode(result.body.toString());
    if (result.statusCode == 401) {
      var message = jsonEncode(json['message']);
      return throw UnauthorizedException(message: message);
    }

    if (result.statusCode == 400) {
      var message = jsonEncode(json['message']);
      return throw BadRequestException(message: message);
    }

    if (json['error']) {
      return throw UnknownException();
    }

    var userJson = jsonEncode(json['loginResult']);
    return UserAuth.fromJson(
      jsonDecode(
        userJson.toString(),
      ),
    );
  }

  Future<bool> register(User user) async {
    var result = await http.post(
      Uri.parse(ApiEndPoint.register),
      body: {
        "name": user.name,
        "email": user.email,
        "password": user.password,
      },
    );
    var json = jsonDecode(result.body.toString());

    if (result.statusCode == 400) {
      var message = jsonEncode(json['message']);
      return throw BadRequestException(message: message);
    }

    if (json['error']) {
      return throw UnknownException();
    }
    return true;
  }
}
