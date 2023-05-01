import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';

class CustomSocialMedia extends StatelessWidget {
  CustomSocialMedia({required this.icon, this.onTap});

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 50,
        decoration: BoxDecoration(
          color: AppColor.kTextFieldColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: AppColor.kHeaderTextColor,
          ),
        ),
      ),
    );
  }
}
