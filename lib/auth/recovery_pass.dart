import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/custom_buttom.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/country_number.dart';
import '../components/custom_close_buttom.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';
import 'otp_page.dart';

class RecoveryPassword extends StatelessWidget {
  const RecoveryPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  CloseButtom(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Spacer(),
              Text(
                "Verify Your Phone Number",
                style: textStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 7),
              Text(
                "Enter The Number Specified During\nRegistration - You Will Receive An OTP\n Reset Password.",
                style: GoogleFonts.poppins(
                  color: AppColor.kTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CountryNumber(),
              Spacer(),
              CustomButtom(
                hint: "Send OTP",
                onTap: () {
                  print("Continue");
                  var route = MaterialPageRoute(builder: (_) => OTPPage());
                  Navigator.push(context, route);
                },
              ),
              SizedBox(height: 17),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By continuing you’re indicating that you accept our ",
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
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
