import 'package:become_developer/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              "Study Now be Proud Later",
              style:
                  GoogleFonts.kalam(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Material(
            elevation: 12.0,
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                fillColor: Colors.white70,
                hintText: "Username",
                hintStyle: GoogleFonts.rokkitt(
                    fontSize: 16, fontWeight: FontWeight.w400),
                suffixIcon: Icon(
                  Icons.account_circle_outlined,
                  size: 24,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.04),
          Material(
            elevation: 12.0,
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                fillColor: Colors.white70,
                hintText: "Password",
                hintStyle: GoogleFonts.rokkitt(
                    fontSize: 16, fontWeight: FontWeight.w400),
                suffixIcon: Icon(
                  Icons.lock_outlined,
                  size: 24,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.06),
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
            child: Material(
              elevation: 12.0,
              color: Colors.deepPurpleAccent.withOpacity(0.8),
              borderRadius: BorderRadius.circular(24.0),
              child: Container(
                width: size.width,
                height: size.height * 0.06,
                child: Center(
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
