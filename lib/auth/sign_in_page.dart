import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/auth/signUp_page.dart';
import 'package:food_ordering_app/constants/colors.dart';
import 'package:food_ordering_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_buttom.dart';
import '../components/custom_text_field.dart';
import '../constants/constants.dart';
import 'recovery_pass.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In to your account",
                style: textStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 7),
              Text(
                "welcome back we have\nmissed you !",
                style: GoogleFonts.poppins(
                  color: AppColor.kTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 78),
              CustomTextField(
                hint: "Enter Your Email",
                icon: Icons.email_rounded,
                type: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hint: "Enter Your Password",
                icon: FontAwesomeIcons.lock,
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      var route =
                          MaterialPageRoute(builder: (_) => RecoveryPassword());
                      Navigator.push(context, route);
                    },
                    child: Text(
                      "Forget Password",
                      style: GoogleFonts.poppins(
                        color: AppColor.kButtonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              CustomButtom(
                hint: "SignIn",
                onTap: () {
                  print("SIGN IN PAGE");
                  var route = MaterialPageRoute(builder: (_) => MyHomePage());
                  Navigator.push(context, route);
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I don’t have an account",
                    style: GoogleFonts.poppins(
                      color: AppColor.kTextColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {
                      var route =
                          MaterialPageRoute(builder: (_) => SignUpPage());
                      Navigator.push(context, route);
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                        color: AppColor.kButtonColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
