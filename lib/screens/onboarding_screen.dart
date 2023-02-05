import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshop/screens/home_page_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 120.0, bottom: 40, left: 80, right: 80),
              child: Image.asset(
                "assets/images/avocado.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                "We deliver groceries to your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Fresh items evreyday",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(color: Colors.grey[600]),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (contex) {
                  return const HomePageScreen();
                }),
              ),
              child: Container(
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green,
                ),
                child: Text(
                  "Get Started",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      )),
    );
  }
}
