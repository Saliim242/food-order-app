import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/components/custom_text_field.dart';
import 'package:food_ordering_app/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/s.png"),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Hi, Salim Abubakar 👋",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  // Notification
                  Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Color(0xffFF0000),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.notifications,
                        color: AppColor.kButtonColor,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              //Search Bar
              CustomTextField(
                hint: "Search your favorite Food ?  ",
                icon: Icons.search,
              )
            ],
          ),
        ),
      ),
    );
  }
}
