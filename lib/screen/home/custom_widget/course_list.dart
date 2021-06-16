import 'package:become_developer/data/dummy_data.dart';
import 'package:become_developer/model/course.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseList extends StatelessWidget {
  Widget courseMethod(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Course course = courses[index];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: size.height * 0.2,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                  color: Colors.black87.withOpacity(0.3),
                  blurRadius: 28,
                  offset: Offset(10, 15))
            ]),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: size.width * 0.25,
                height: size.height * 0.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                    image: AssetImage(course.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width * 0.2,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                              course.titleProgram,
                              style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.bold),
                              maxLines: 2),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          children: [
                            Icon(Icons.assignment_outlined,
                                color: Colors.black87),
                            SizedBox(width: size.width * 0.01),
                            Text(course.level)
                          ],
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          children: [
                            Icon(Icons.access_time_outlined,
                                color: Colors.black87),
                            SizedBox(width: size.width * 0.01),
                            Text(course.estimation)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Courses',
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5,
                  ),
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
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return courseMethod(context, index);
              },
              itemCount: courses.length,
            ),
          )
        ],
      ),
    );
  }
}
