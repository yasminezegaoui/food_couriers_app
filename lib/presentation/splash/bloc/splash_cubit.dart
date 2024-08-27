import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_couriers_app/presentation/splash/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState>{
  SplashCubit() : super(DisplaySplash());

  // we will check in this method if the user is already
  // logged in then display home screen otherwise
  // login/signup screen

  void appStarted() async{
    await Future.delayed(const Duration(seconds: 2));
    emit(
      UnAuthenticated()
    );
  }
}