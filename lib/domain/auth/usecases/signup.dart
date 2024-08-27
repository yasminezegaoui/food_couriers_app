import 'package:dartz/dartz.dart';
import 'package:food_couriers_app/core/usercase/usecase.dart';
import 'package:food_couriers_app/data/auth/models/user_creation_req.dart';
import 'package:food_couriers_app/domain/auth/repository/auth.dart';
import 'package:food_couriers_app/service_locator.dart';

class SignupUseCase implements Usecase<Either,UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async{
    return await sl<AuthRepository>().signup(params!) ;
  }
}