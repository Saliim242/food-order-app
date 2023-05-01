import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CloseButtom extends StatelessWidget {
  CloseButtom({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: AppColor.kTextFieldColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Image.asset("assets/icons/close.png"),
        ),
      ),
    );
  }
}
