import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isbool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(196, 196, 196, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(child: SvgPicture.asset("assets/svg/Group.svg")),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Loging",
                style: GoogleFonts.dmSans(
                    fontSize: 26, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Enter your emails and password",
                style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(124, 124, 124, 1)),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Email",
                style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(124, 124, 124, 1)),
              ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  border:
                      UnderlineInputBorder(borderSide: BorderSide(width: 0.5)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: Colors.black)),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: Colors.red))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Password",
                style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(124, 124, 124, 1)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  suffixIcon: (isbool == true)
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.5)),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: Colors.black)),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: Colors.red))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Spacer(),
              Text("Forgot Password?",
                  style: GoogleFonts.dmSans(
                      fontSize: 14, fontWeight: FontWeight.w500)),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(
                      Color.fromRGBO(83, 177, 117, 1)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {},
                child: Text("Log in",
                    style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 249, 255, 1),
                    ))),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 90,
              ),
              Text("Don't have an account ?",
                  style: GoogleFonts.dmSans(
                      fontSize: 14, fontWeight: FontWeight.w700)),
              Text(
                "Sign up",
                style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(83, 177, 117, 1)),
              )
            ],
          )
        ],
      ),
    );
  }
}
