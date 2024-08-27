import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_couriers_app/core/configs/theme/app_theme.dart';
import 'package:food_couriers_app/firebase_options.dart';
import 'package:food_couriers_app/presentation/onboarding/pages/page_1.dart';
import 'package:food_couriers_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:food_couriers_app/presentation/splash/pages/splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const SplashPage(),
        routes: {'/page_1': (context) => const Page1()},
      ),
    );
  }
}
