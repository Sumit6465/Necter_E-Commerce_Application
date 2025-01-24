import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          SvgPicture.asset(
            "assets/svg/Group.svg",
            height: 40,
            width: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              const Icon(Icons.location_on,
                  size: 18, color: Color.fromRGBO(76, 79, 77, 1)),
              Text(
                "Pune,Maharashtra",
                style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(76, 79, 77, 1)),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              height: 52,
              width: 380,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: const SearchBar(
                hintText: "Search store",
                leading: Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/banner.png"),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text("Exclusive Offer",
                  style: GoogleFonts.dmSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
              Spacer(),
              Text("See all",
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(83, 177, 117, 1),
                  )),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200, // Set height for horizontal scrolling list
            child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scrolling
                itemCount: 5, // Number of items in the list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 120, // Fixed width for each item
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.5,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
