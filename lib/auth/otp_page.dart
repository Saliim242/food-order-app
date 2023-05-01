import 'package:flutter/material.dart';
import 'package:food_ordering_app/auth/reset_password.dart';
import 'package:food_ordering_app/components/custom_buttom.dart';
import 'package:food_ordering_app/components/custom_close_buttom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../components/otp_card.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      CloseButtom(
                        onTap: (() => Navigator.pop(context)),
                      ),
                    ],
                  ),
                  Lottie.asset(
                    alignment: Alignment.center,
                    'assets/icons/security.json',
                    fit: BoxFit.cover,
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Phone Verification Code ",
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Please Enter The Verification Code We Sent To\n Your Phone Number 613XXXX40,",
                    style: GoogleFonts.poppins(
                      color: AppColor.kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OTPCard(),
                      OTPCard(),
                      OTPCard(),
                      OTPCard(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t Receive The Code ? ",
                        style: GoogleFonts.poppins(
                          color: AppColor.kTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Resend",
                        style: GoogleFonts.poppins(
                          color: AppColor.kButtonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 50 * 3),
                  CustomButtom(
                    hint: "Verify",
                    onTap: () {
                      var route =
                          MaterialPageRoute(builder: (_) => ResetPassword());
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
