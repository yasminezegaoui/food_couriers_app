// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';
import 'package:food_couriers_app/presentation/onboarding/pages/main_onboarding.dart';
import 'package:food_couriers_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:food_couriers_app/presentation/splash/bloc/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if(state is UnAuthenticated){
          Navigator.of(context).pushAndRemoveUntil(
            CupertinoPageRoute(
                fullscreenDialog: true, 
                builder: (context) => MainOnboarding()),
            (routes) => false
          );
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/Pattern.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                  colorFilter: ColorFilter.mode(
                    AppColors.primary, // Apply your desired color and opacity
                    BlendMode.srcATop, // Choose the blend mode
                  ),
                )),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        AppColors.backgroundColor.withOpacity(.1),
                        AppColors.backgroundColor.withOpacity(.1),
                        AppColors.backgroundColor.withOpacity(.1),
                        AppColors.backgroundColor.withOpacity(.1),
                        AppColors.backgroundColor.withOpacity(.1),
                        AppColors.backgroundColor.withOpacity(.1),
                        Colors.transparent
                      ])),
                )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/Image.png'),
                      Image.asset('assets/images/on_the_way.png'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Food Couriers',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 47),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
