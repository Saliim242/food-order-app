import 'package:flutter/material.dart';
import 'package:food_ordering_app/auth/sign_in_page.dart';
import 'package:food_ordering_app/components/custom_buttom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../constants/colors.dart';

class ResetPasswordConfirm extends StatelessWidget {
  const ResetPasswordConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                alignment: Alignment.center,
                'assets/icons/password.json',
                fit: BoxFit.cover,
              ),
              Text(
                "Password Changed!",
                style: GoogleFonts.poppins(
                  color: AppColor.kHeaderTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Your Password Has Been Changed\nSuccessfully. !!",
                style: GoogleFonts.poppins(
                  color: AppColor.kTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomButtom(
                hint: "Go to Sign In",
                onTap: () {
                  var route = MaterialPageRoute(builder: (_) => SignInPage());
                  Navigator.push(context, route);
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
