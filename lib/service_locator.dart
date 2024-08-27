// ignore_for_file: non_constant_identifier_names

import 'package:food_couriers_app/data/auth/repository/auth_repository_impl.dart';
import 'package:food_couriers_app/data/auth/sources/auth_firebase_service.dart';
import 'package:food_couriers_app/domain/auth/repository/auth.dart';
import 'package:food_couriers_app/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

// sl = service locator
final sl = GetIt.instance;

Future<void> InitializeDependencies() async{

  // Services

  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  //Repositories

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  // usecases

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );
}