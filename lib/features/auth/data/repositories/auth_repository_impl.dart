import 'package:demo1/features/auth/domain/entities/user.dart';
import 'package:demo1/features/auth/domain/repositories/auth_repository.dart';
import 'package:demo1/features/auth/data/datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }
}
