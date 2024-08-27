// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 80,),
          Image.asset(
            'assets/images/Illustration2.png',
            fit: BoxFit.contain,
            width: 500,
          ),
          SizedBox(height: 50,),
          Text(
            'Good food at a',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              height: 0.8
            ),
          ),
          Text(
            'cheap price',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              height: 1.6
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 109),
            child: Text(
              'You can eat at expensive restaurants with affordable price',
              style: TextStyle(
                fontSize: 14,
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