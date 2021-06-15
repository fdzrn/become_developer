import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent, shape: BoxShape.circle),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/profile-image.png'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.02),
              Text("Student Name", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),)
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Icon(Icons.notifications_none_rounded, size: 32, color: Colors.black),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(24)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text("0", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
              Icon(Icons.account_circle_outlined, size: 32, color: Colors.black)
            ],
          )
        ],
      ),
    );
  }
}
