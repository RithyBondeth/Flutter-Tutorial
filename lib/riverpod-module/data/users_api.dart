import 'dart:convert';

import 'package:flutter_tutorial/riverpod-module/models/user_model.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  final http.Client _client;
  UsersApi(this._client);

  Future<List<UserModel>> fetchUsers() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final response = await _client.get(uri);

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch users: ${response.statusCode}');
    }

    final usersJsonBody = jsonDecode(response.body) as List<dynamic>;
    List<UserModel> users = usersJsonBody
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return users;
  }
}
