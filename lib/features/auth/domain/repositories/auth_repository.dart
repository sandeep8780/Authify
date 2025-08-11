import 'package:demo1/features/auth/domain/entities/user.dart';

abstract class AuthRepository{
  Future<User> login(String email , String password);
}