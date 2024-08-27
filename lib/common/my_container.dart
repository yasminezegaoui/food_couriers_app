// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';

class MyContainer extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double horizontal;
  final List<Color>? colors;
  final Color? color;
  final bool showIcon;

  const MyContainer({
    super.key, 
    required this.text, 
    this.onPressed, 
    required this.horizontal, 
    this.colors, 
    this.color, 
    this.showIcon = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: colors ?? AppColors.linear
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 5),
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          disabledBackgroundColor: Colors.transparent
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color ?? Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        )
        ),
    ) ;
  }
}