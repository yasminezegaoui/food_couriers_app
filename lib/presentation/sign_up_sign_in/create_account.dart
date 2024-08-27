// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_couriers_app/common/my_container.dart';
import 'package:food_couriers_app/common/my_text_field.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 30,
      ),
      child: Column(
        children: [
          MyTextField(
            text: 'Full Name', 
            hintText: 'Zegaoui Yasmine',
          ),
          SizedBox(height: 20,),
          MyTextField(
            text: 'Email adress', 
            hintText: 'yasmine@gmail.com',
          ),
          SizedBox(height: 20,),
          MyTextField(
            text: 'Password', 
            hintText: '********',
            obscureText: true,
          ),
          SizedBox(height: 30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyContainer(
                text: 'Sign Up', 
                horizontal: 100,
                colors: [
                  AppColors.primary,
                  AppColors.primary
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Divider(
                  thickness: 3,
                  color: AppColors.subText.withOpacity(.1),
                  indent: 70,
                  endIndent: 70,
                ),
              ),
              MyContainer(
                text: 'Sign up with Google',
                color: Colors.black, 
                horizontal: 58,
                colors: [
                  AppColors.subText.withOpacity(.1),
                  AppColors.subText.withOpacity(.1),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
