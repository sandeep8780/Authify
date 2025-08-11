import 'package:demo1/features/auth/domain/repositories/auth_repository.dart';

import '../entities/user.dart';

class LoginUser{
  final AuthRepository repositrory;
  LoginUser(this.repositrory);

  Future<User> call(String email , String password){
    return repositrory.login(email, password);

  }

}