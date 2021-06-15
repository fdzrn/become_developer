import 'package:become_developer/model/course.dart';
import 'package:become_developer/model/language.dart';

final _course1 = Course(
    imageUrl: "assets/images/course1.jpg",
    titleProgram: "Source Code Management",
    level: "Beginner",
    estimation: "40 Hours",
);

final _course2 = Course(
  imageUrl: "assets/images/course2.jpg",
  titleProgram: "TensorFlow Developer Certificate",
  level: "Intermediate",
  estimation: "25 Hours",
);

final _course3 = Course(
  imageUrl: "assets/images/course3.jpg",
  titleProgram: "Android Developer Expert",
  level: "Expert",
  estimation: "90 Hours",
);

final List<Course> courses = [_course1, _course2, _course3];

final _programmingLanguage1 = Language(
  logoUrl: "assets/images/logo1.png",
  name: "Java",
);

final _programmingLanguage2 = Language(
  logoUrl: "assets/images/logo2.png",
  name: "C++",
);

final _programmingLanguage3 = Language(
  logoUrl: "assets/images/logo3.png",
  name: "Ruby",
);

final _programmingLanguage4 = Language(
  logoUrl: "assets/images/logo4.png",
  name: "Python",
);

final _programmingLanguage5 = Language(
  logoUrl: "assets/images/logo5.png",
  name: "JavaScript",
);

final languages = [
  _programmingLanguage1,
  _programmingLanguage2,
  _programmingLanguage3,
  _programmingLanguage4,
  _programmingLanguage5
];