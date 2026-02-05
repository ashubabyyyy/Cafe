import 'package:cafe/provider/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailItemScreen extends StatefulWidget {
  const DetailItemScreen({super.key});

  @override
  State<DetailItemScreen> createState() => _DetailItemScreenState();
}

class _DetailItemScreenState extends State<DetailItemScreen> {
  String selectedSize = "S";

  @override
  Widget build(BuildContext context) {
    final coffee = Provider.of<CoffeeProvider>(context).selectedCoffee;

    if (coffee == null) {
      return const Scaffold(body: Center(child: Text("No coffee selected")));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios_outlined),
                  ),
                  Text(
                    "Detail",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.favorite_border),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: Container(
                height: 202,
                width: 327,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(coffee.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee.title,
                    style: GoogleFonts.sora(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        coffee.subtitle,
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          color: const Color(0xffA2A2A2),
                        ),
                      ),
                      Spacer(),
                      Image.asset("assets/icons/fastdelivery.png"),
                      SizedBox(width: 5),
                      Image.asset("assets/icons/exporticon.png"),
                      SizedBox(width: 5),
                      Image.asset("assets/icons/extramilk.png"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 5),
                      Text(
                        coffee.rating,
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
                  const SizedBox(height: 20),
                  Text(
                    "Description",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffA2A2A2),
                      ),
                      children: [
                        TextSpan(
                          text: coffee.description.split("Read More")[0],
                        ),
                        TextSpan(
                          text: "Read More",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            color: coffee.readMoreColor ?? Color(0xffC67C4E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Size",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: ["S", "M", "L"].map((size) {
                      final isSelected = selectedSize == size;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = size;
                          });
                        },
                        child: Container(
                          height: 41,
                          width: 96,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Color(0xffC67C4E).withValues(alpha: 0.3)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? Color(0xffC67C4E)
                                  : Colors.grey,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              size,
                              style: GoogleFonts.sora(
                                color: isSelected ? Colors.white : Colors.black,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 120),
                  Container(
                    height: 150,
                    width: 375,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 45.0,
                            horizontal: 5,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Price",
                                style: GoogleFonts.sora(
                                  fontSize: 14,
                                  color: const Color(0xff909090),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                coffee.price,
                                style: GoogleFonts.sora(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xffC67C4E),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 90),
                        Container(
                          height: 56,
                          width: 217,
                          decoration: BoxDecoration(
                            color: const Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
