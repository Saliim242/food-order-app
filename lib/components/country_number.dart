import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../constants/colors.dart';

class CountryNumber extends StatelessWidget {
  const CountryNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 15),
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.kTextFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IntlPhoneField(
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        disableLengthCheck: true,
        dropdownIcon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.white,
        ),
        dropdownTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        //invalidNumberMessage: "Enter Correct Number",
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: "61XXXXXXX",
          hintStyle: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColor.kTextColor,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 18),
          border: InputBorder.none,
        ),
        initialCountryCode: 'SO',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}
