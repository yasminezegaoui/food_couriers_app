import 'package:dartz/dartz.dart';
import 'package:food_couriers_app/data/auth/models/user_creation_req.dart';
import 'package:food_couriers_app/data/auth/sources/auth_firebase_service.dart';
import 'package:food_couriers_app/domain/auth/repository/auth.dart';
import 'package:food_couriers_app/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{

  @override
  Future<Either> signup(UserCreationReq user) async{
    return sl<AuthFirebaseService>().signup(user);
  }

  @override
  Future<Either> signin() {
    throw UnimplementedError();
  }
}