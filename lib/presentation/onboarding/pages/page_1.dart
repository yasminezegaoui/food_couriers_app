// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Image.asset(
            'assets/images/Illustartion.png',
            fit: BoxFit.contain,
            width: 500,
          ),
          SizedBox(height: 20,),
          Text(
            'Select the',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              height: 0.8
            ),
          ),
          Text(
            'Favorities Menu',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              height: 1.6
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 79),
            child: Text(
              'Now eat well, don\'t leave the house,You can choose your favorite food only with one click',
              style: TextStyle(
                fontSize: 13,
                color: AppColors.grey,
                fontFamily: 'Inter'
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ); 
  }
}