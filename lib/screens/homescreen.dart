import 'package:cafe/screens/detail_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 280,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xff131313), Color(0xff313131)],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: const Color(0xffA2A2A2),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Bilzen, Tanjungbalai",
                              style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xffD8D8D8),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xffD8D8D8),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    hintText: "Search coffee",
                                    hintStyle: GoogleFonts.sora(
                                      color: const Color(0xffA2A2A2),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xff2A2A2A),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  style: GoogleFonts.sora(color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => DetailItemScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffC67C4E),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                    Icons.tune,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: -70,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      height: 140,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/cafebg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 8,
                            ),
                            child: Image.asset("assets/images/promo.png"),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(
                          //     vertical: 50.0,
                          //     horizontal: 20,
                          //   ),
                          //   child: Image.asset(
                          //     "assets/images/byeonegetonefree.png",
                          //   ),
                          // ),
                          Positioned(
                            bottom: 63,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              child: Container(
                                height: 20,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: Colors.black.withValues(alpha: 0.7),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              child: Container(
                                height: 20,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.black.withValues(alpha: 0.7),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 50.0,
                              horizontal: 20,
                            ),
                            child: Image.asset(
                              "assets/images/byeonegetonefree.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 90),

            SizedBox(
              height: 29,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffee.length,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    width: 87,
                    decoration: BoxDecoration(
                      color: index == 0
                          ? const Color(0xffC67C4E)
                          : const Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        coffee[index]['name']!,
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          color: index == 0 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 15,
                mainAxisExtent: 260,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          items[index]['image']!,
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        items[index]['title']!,
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        items[index]['subtitle']!,
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Row(
                        children: [
                          Text(
                            items[index]['price']!,
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xffC67C4E),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> coffee = [
  {'name': "All Coffee"},
  {'name': "Machiato"},
  {'name': "Latte"},
  {'name': "Americano"},
];

final List<Map<String, String>> items = [
  {
    'image': "assets/images/cafemocha.png",
    'title': "Caffe Mocha",
    'subtitle': "Deep Foam",
    'price': "\$4.53",
  },
  {
    'image': "assets/images/flatwhite.png",
    'title': "Flat White",
    'subtitle': "Espresso",
    'price': "\$3.35",
  },
  {
    'image': "assets/images/cafemocha.png",
    'title': "Caffe Mocha",
    'subtitle': "Deep Foam",
    'price': "\$4.53",
  },
  {
    'image': "assets/images/flatwhite.png",
    'title': "Flat White",
    'subtitle': "Espresso",
    'price': "\$3.35",
  },
  {
    'image': "assets/images/cafemocha.png",
    'title': "Caffe Mocha",
    'subtitle': "Deep Foam",
    'price': "\$4.53",
  },
  {
    'image': "assets/images/flatwhite.png",
    'title': "Caffe Mocha",
    'subtitle': "Deep Foam",
    'price': "\$4.53",
  },
  {
    'image': "assets/images/cafemocha.png",
    'title': "Caffe Mocha",
    'subtitle': "Deep Foam",
    'price': "\$4.53",
  },
  {
    'image': "assets/images/flatwhite.png",
    'title': "Caffe Mocha",
    'subtitle': "Deep Foam",
    'price': "\$4.53",
  },
];
