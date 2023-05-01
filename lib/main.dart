import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants/colors.dart';

import 'auth/sign_in_page.dart';

void main() {
  runApp(const FoodOrder());
}

class FoodOrder extends StatelessWidget {
  const FoodOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Food Order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColor.kBackgroundColor,
      ),
      home: SignInPage(),
    );
  }
}
