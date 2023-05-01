import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hint, required this.icon, this.type});

  final String hint;
  final IconData icon;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.kTextFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        keyboardType: type,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            size: 16,
            color: AppColor.kHeaderTextColor,
          ),
          hintText: hint,
          hintStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: AppColor.kHeaderTextColor.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
