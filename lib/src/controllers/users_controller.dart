import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:github_client/src/models/user.dart';
import 'package:github_client/src/pages/user_profile_page.dart';

class UserController {
  Dio dio = Dio();
  late User user;
  var result;

  Future<User> getUser(String userName) async {
    try {
      result = await dio.get('https://api.github.com/users/$userName');
      user = User(userJson: result.data);

      return user;
    } catch (e) {
      throw Exception("User not found");
    }
  }

  void gotToUserPage(context, User user) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => UserProfilePage(user: user)));
  }
}
