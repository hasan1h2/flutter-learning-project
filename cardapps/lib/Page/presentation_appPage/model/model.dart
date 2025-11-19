// class Wood {
//   final String title;
//   final String subTitle;
//   final String oth;
//   final String img;
//   final String btn;
//
//   Wood({
//     required this.title,
//     required this.subTitle,
//     required this.oth,
//     required this.img,
//     required this.btn,
//   });
//
//   factory Wood.fromJson(Map<String, dynamic> json) {
//     return Wood(
//       title: json['title'] ?? '',
//       subTitle: json['subTitle'] ?? '',
//       oth: json['oth'] ?? '',
//       img: json['img'] ?? '',
//       btn: json['btn'] ?? '',
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'subTitle': subTitle,
//       'oth': oth,
//       'img': img,
//       'btn': btn,
//     };
//   }
// }


import 'package:flutter/material.dart';

import '../page/Page3.dart';
import '../page/page4.dart';
import '../page/page_1.dart';
import '../page/page_2.dart';

List<Map<String, dynamic>> woodData = [
  {
    'title': 'Welcome To TimberLens',
    'subTitle': 'Easily identify timber species using your \nphone',
    'oth': 'Trusted By 16546+ Users',
    'img': 'assets/images/banana1.png',
    'btn': 'Let\'s get started',
  },
  {
    'title': 'Scan Timber. Get Insights',
    'subTitle': 'Learn about timber species, their source trees, suitable uses all in one place.',
    'oth': 'Trusted By 16546+ Users',
    'img': 'assets/images/banana2.png',
    'btn': 'Continue',
  },
  {
    'title': 'Know Your Wood & Tree Profile',
    'subTitle': 'Just take a photo and get instant details about wood type, origin, and properties.',
    'oth': '',
    'img': 'assets/images/banana2.png',
    'btn': 'Create Account',
    'skipping':  Icon(Icons.skip_next),
  },
];List<Map<String, dynamic>> meetings = [
  {
    'title': 'Sep 25, 9:00 AM - 9:30 AM',
    'subTitle': '30 minutes',
    'ofer': 'Free',
    'btn': 'Book Slot',
  }, {
    'title': 'Sep 25, 9:00 AM - 9:30 AM',
    'subTitle': '30 minutes',
    'ofer': 'Booked',
    'btn': 'Book Slot',
  }, {
    'title': 'Sep 25, 9:00 AM - 9:30 AM',
    'subTitle': '30 minutes',
    'ofer': 'Free',
    'btn': 'Book Slot',
  }, {
    'title': 'Sep 25, 9:00 AM - 9:30 AM',
    'subTitle': '30 minutes',
    'ofer': 'Booked',
    'btn': 'Book Slot',
  }, {
    'title': 'Sep 25, 9:00 AM - 9:30 AM',
    'subTitle': '30 minutes',
    'ofer': 'Free',
    'btn': 'Book Slot',
  },

];
List<Map<String, dynamic>> page2 = [
  {
    'title': 'Heart Disease',
    'subTitle': 'Today ( 12 : 00 AM )',
    'address': '3 rue Paul Bert 75011 Paris',
    'img': 'assets/images/man1.jpg',
  }, {
    'title': 'Heart Disease',
    'subTitle': 'Today ( 12 : 00 AM )',
    'address': '3 rue Paul Bert 75011 Paris',
    'img': 'assets/images/man2.jpg',
  }, {
    'title': 'Heart Disease',
    'subTitle': 'Today ( 12 : 00 AM )',
    'address': 'Online Appointment',
    'img': 'assets/images/man3.jpg',
  }, {
    'title': 'Heart Disease',
    'subTitle': 'Today ( 12 : 00 AM )',
    'address': '3 rue Paul Bert 75011 Paris',
    'img': 'assets/images/man4.jpg',
  }, {
    'title': 'Heart Disease',
    'subTitle': 'Today ( 12 : 00 AM )',
    'address': '3 rue Paul Bert 75011 Paris',
    'img': 'assets/images/man5.jpg',
  },
];List<Map<String, dynamic>> page1 = [
  {
    'title': 'Total Products : 3',
    'title1': 'Cameron williamson',
    'number': '+1(470) 948532',
    'subTitle': 'Delivery Fee : \$25',
    'price': 'Price:\$75',
    'btn': 'Complete',
    'date': 'Date: 20DEc-2024, 3:0 PM',
    'img': 'assets/images/man1.jpg',
  }, {
    'title': 'Total Products : 3',
    'title1': 'Cameron williamson',
    'number': '+1(470) 948532',
    'subTitle': 'Delivery Fee : \$25',
    'price': 'Price:\$75',
    'btn': 'Complete',
    'date': 'Date: 20DEc-2024, 3:0 PM',
    'img': 'assets/images/man2.jpg',
  }, {
    'title': 'Total Products : 3',
    'title1': 'Cameron williamson',
    'number': '+1(470) 948532',
    'subTitle': 'Delivery Fee : \$25',
    'price': 'Price:\$75',
    'btn': 'Complete',
    'date': 'Date: 20DEc-2024, 3:0 PM',
    'img': 'assets/images/man3.jpg',
  }, {
    'title': 'Total Products : 3',
    'title1': 'Cameron williamson',
    'number': '+1(470) 948532',
    'subTitle': 'Delivery Fee : \$25',
    'price': 'Price:\$75',
    'btn': 'Complete',
    'date': 'Date: 20DEc-2024, 3:0 PM',
    'img': 'assets/images/man4.jpg',
  }, {
    'title': 'Total Products : 3',
    'title1': 'Cameron williamson',
    'number': '+1(470) 948532',
    'subTitle': 'Delivery Fee : \$30',
    'price': 'Price:\$70',
    'btn': 'Complete',
    'date': 'Date: 20DEc-2024, 3:0 PM',
    'img': 'assets/images/man5.jpg',
  },
];

 //
 // List<Widget>mainPage=[
 //   Page1(),
 //   Page2(),
 //   Page3(),
 //   Page4(),
 // ];


// List<Wood> woodList = woodData.map((data) => Wood.fromJson(data)).toList();
//