// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:food_couriers_app/common/my_container.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';
import 'package:food_couriers_app/presentation/onboarding/pages/page_1.dart';
import 'package:food_couriers_app/presentation/onboarding/pages/page_2.dart';
import 'package:food_couriers_app/presentation/sign_up_sign_in/create_account.dart';
import 'package:food_couriers_app/presentation/sign_up_sign_in/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnboarding extends StatefulWidget {
  const MainOnboarding({super.key});

  @override
  State<MainOnboarding> createState() => _MainOnboardingState();
}

class _MainOnboardingState extends State<MainOnboarding> {
  late PageController _controller;
  bool isLastPage = false;

  @override
  void initState() {
    _controller = PageController();
    _controller.addListener(() {
      setState(() {
        isLastPage = _controller.page == 1; 
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Pattern2.png'),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              )
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.backgroundColor.withOpacity(.01),
                    AppColors.backgroundColor.withOpacity(.01),
                    AppColors.backgroundColor.withOpacity(.01),
                    AppColors.backgroundColor.withOpacity(.01),
                    AppColors.backgroundColor.withOpacity(.01),
                    AppColors.backgroundColor.withOpacity(.01),
                    AppColors.backgroundColor.withOpacity(.01),
                    Colors.transparent
                    // Colors.transparent
                  ]
                )
              ),
            )
          ),
          PageView(
            controller: _controller,
            children: [
              Page1(),
              Page2()
            ],
          ),

          Container(
            alignment: Alignment(0, 0.9),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: isLastPage 
              ? MyContainer(
                onPressed: () => _bottomSheet(context),
                text: 'Next', 
                horizontal: 25
                ) 
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      _controller.jumpToPage(1);
                      await _bottomSheet(context);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller, 
                    count: 2
                  ),
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300), 
                        curve: Curves.easeIn)
                      ;
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      // size: 18,
                      color: AppColors.seconday,
                    ),
                  )
                ],
              ),
          )
        ],
      ),
    );
  }

  Future<dynamic> _bottomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: const Color.fromARGB(255, 253, 248, 248),
      isScrollControlled: true,
      isDismissible: false,
      useSafeArea: true,
      enableDrag: false,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: DefaultTabController(
            length: 2, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  thickness: 5,
                  color: AppColors.seconday.withOpacity(.1),
                  indent: 160,
                  endIndent: 160,
                ),
                SizedBox(height: 10,),
                TabBar(
                  indicatorColor: AppColors.primary,
                  labelColor: AppColors.primary,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: 'Create Account'),
                    Tab(text: 'Login'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      CreateAccount(),
                      Login(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}