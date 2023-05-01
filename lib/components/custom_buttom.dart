import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({super.key, required this.hint, this.onTap});

  final String hint;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.kButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(
          child: Text(
            hint,
            style: GoogleFonts.poppins(
              color: AppColor.kHeaderTextColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
