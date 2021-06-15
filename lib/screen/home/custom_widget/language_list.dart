import 'package:become_developer/data/dummy_data.dart';
import 'package:become_developer/model/language.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageList extends StatelessWidget {
  languageMethod(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Language language = languages[index];

    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.only(top: 60, bottom: 40),
            width: size.width * 0.4,
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    topRight: Radius.circular(100.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      blurRadius: 20.0,
                      offset: Offset(5, 15))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
                  child: Text(
                    language.name,
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.code_outlined,
                            color: Colors.black87,
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            "Learn Now",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          child: Image(
            width: size.width * 0.25,
            height: size.height * 0.2,
            image: AssetImage(language.logoUrl),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16,0,16,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Languages",
                style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5),
              ),
              Text(
                'See All',
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.deepPurpleAccent),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            height: size.height * 0.40,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: languages.length,
              itemBuilder: (BuildContext context, int index) {
                return languageMethod(context, index);
              },
            ),
          ),
        )
      ],
    );
  }
}
