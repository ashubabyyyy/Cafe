import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailItemScreen extends StatelessWidget {
  const DetailItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_outlined)),
                Text(
                  "Detail",
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.favorite_border),
              ],
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Container(
              height: 202,
              width: 327,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage("assets/images/cafemochadetail.png"),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Caffe Mocha",
                  style: GoogleFonts.sora(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Row(
                  children: [
                    Text(
                      "Ice/Hot",
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        color: Color(0xffA2A2A2),
                      ),
                    ),
                    Spacer(),
                    Image.asset("assets/icons/fastdelivery.png"),
                    SizedBox(width: 5),
                    Image.asset("assets/icons/exporticon.png"),
                    SizedBox(width: 5),
                    Image.asset("assets/icons/extramilk.png"),
                    SizedBox(width: 5),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffFBBE21)),
                    SizedBox(width: 5),
                    Text(
                      "4.8",
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "(230)",
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        color: Color(0xffA2A2A2),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Description",
                  style: GoogleFonts.sora(
                    fontSize: 16,

                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "A cappuccino is an approximately 150 ml (5 oz)",
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    color: Color(0xffA2A2A2),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "beverage, with 25 ml of espresso coffee and ",
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    color: Color(0xffA2A2A2),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "85ml of fresh milk the fo..",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        color: Color(0xffA2A2A2),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      " Read More",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffC67C4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  "Size",
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 41,
                        width: 96,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("S")),
                      ),
                      Container(
                        height: 41,
                        width: 96,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("M")),
                      ),
                      Container(
                        height: 41,
                        width: 96,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("L")),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
