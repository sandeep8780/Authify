import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:demo1/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<UserModel> login(String email, String password) async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    // Example fake JSON response
    const fakeJsonResponse = '{"id": "1", "name": "Sandeep"}';

    // Decode JSON string to Map
    final decoded = json.decode(fakeJsonResponse) as Map<String, dynamic>;

    // Convert Map to UserModel
    return UserModel.fromJson(decoded);
  }
}
