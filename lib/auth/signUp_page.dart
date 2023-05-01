import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/auth/sign_in_page.dart';
import 'package:food_ordering_app/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/country_number.dart';
import '../components/custom_buttom.dart';
import '../components/custom_social_media.dart';
import '../components/custom_text_field.dart';
import '../constants/constants.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create an account",
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 17),
                  Text(
                    "Register below with your details",
                    style: GoogleFonts.poppins(
                      color: AppColor.kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 21),
                  // Country Input TextField
                  CountryNumber(),
                  SizedBox(height: 20),

                  CustomTextField(
                    hint: "Enter Your Email",
                    icon: Icons.email_rounded,
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hint: "Enter Your FullName",
                    icon: FontAwesomeIcons.userCheck,
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hint: "Enter Your Password",
                    icon: FontAwesomeIcons.lock,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hint: "Enter Your Confirm Password",
                    icon: FontAwesomeIcons.lock,
                  ),
                  SizedBox(height: 20),
                  CustomButtom(
                    hint: "Register",
                    onTap: () {
                      print("SIGN IN PAGE");
                    },
                  ),

                  SizedBox(height: 17),

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "By continuing you’re indicating that you accept our ",
                      style: GoogleFonts.poppins(
                        color: AppColor.kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      children: [
                        TextSpan(
                          text: "Terms of use ",
                          style: GoogleFonts.poppins(
                            color: AppColor.kHeaderTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "and our ",
                          style: GoogleFonts.poppins(
                            color: AppColor.kTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: "Privarcy Policy",
                          style: GoogleFonts.poppins(
                            color: AppColor.kHeaderTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: AppColor.kTextColor,
                        ),
                      ),
                      Text(
                        " Or Continue with ",
                        style: GoogleFonts.poppins(
                          color: AppColor.kTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: AppColor.kTextColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSocialMedia(
                        icon: FontAwesomeIcons.google,
                        onTap: () {
                          print("Google IS Tapted");
                        },
                      ),
                      SizedBox(width: 23),
                      CustomSocialMedia(
                        icon: FontAwesomeIcons.apple,
                        onTap: () {
                          print("Apple IS Tapted");
                        },
                      ),
                      SizedBox(width: 23),
                      CustomSocialMedia(
                        icon: FontAwesomeIcons.facebookF,
                        onTap: () {
                          print("Facebook IS Tapted");
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account",
                        style: GoogleFonts.poppins(
                          color: AppColor.kTextColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          var route =
                              MaterialPageRoute(builder: (_) => SignInPage());
                          Navigator.push(context, route);
                        },
                        child: Text(
                          "Sign In",
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
        ),
      ),
    );
  }
}
