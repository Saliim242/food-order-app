import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class OTPCard extends StatelessWidget {
  const OTPCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: AppColor.kTextFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.phone,
        maxLength: 1,
        style: GoogleFonts.poppins(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: AppColor.kHeaderTextColor,
        ),
        decoration: InputDecoration(
          counterText: "",
          contentPadding: EdgeInsets.only(top: 25),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
