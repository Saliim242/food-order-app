import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/auth/reset_pass_confirm.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_buttom.dart';
import '../components/custom_text_field.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Reset Password",
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Enter your new password and\n Confirm password",
                    style: GoogleFonts.poppins(
                      color: AppColor.kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 78),
                  CustomTextField(
                    hint: "Enter Your New Password",
                    icon: FontAwesomeIcons.lock,
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hint: "Enter Your New Confirm Password",
                    icon: FontAwesomeIcons.lock,
                  ),
                  SizedBox(height: 7),
                  SizedBox(height: 50),
                  CustomButtom(
                    hint: "Reset Password",
                    onTap: () {
                      print("Reset IN PAGE");
                      var route = MaterialPageRoute(
                          builder: (_) => ResetPasswordConfirm());
                      Navigator.push(context, route);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
