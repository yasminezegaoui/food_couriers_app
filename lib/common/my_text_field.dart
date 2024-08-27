// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool obscureText;
  
  const MyTextField({
    super.key, 
    required this.text, 
    required this.hintText,
    this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 5
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Poppins',
              fontSize: 17
            ),
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(
                color: AppColors.subText.withOpacity(.2)
              )            
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(
                color: AppColors.subText.withOpacity(.2)
              )  
            ),
            fillColor: Colors.transparent,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.subText.withOpacity(.2)
            )
          ),
        )
      ],
    );
  }
}