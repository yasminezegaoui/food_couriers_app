import 'package:dartz/dartz.dart';
import 'package:food_couriers_app/data/auth/models/user_creation_req.dart';

abstract class AuthRepository {

  Future<Either> signup(UserCreationReq user);

  Future<Either> signin();
}