
import 'package:cafe/navigation/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Center(child: Image.asset("assets/images/coffee.png")),
              Text(
                "Fall in Love with ",
                style: GoogleFonts.sora(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),

              Text(
                "Coffee in Blissful",
                style: GoogleFonts.sora(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),

              Text(
                "Delight!",
                style: GoogleFonts.sora(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),

              Text(
                "Welcome to our cozy coffee corner, where ",
                style: GoogleFonts.sora(fontSize: 14, color: Colors.white),
              ),
              Text(
                "every cup is a delightful for you. ",
                style: GoogleFonts.sora(fontSize: 14, color: Colors.white),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Navigationscreen()),
                  );
                },
                child: Container(
                  height: 56,
                  width: 327,
                  decoration: BoxDecoration(
                    color: Color(0xffC67C4E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
