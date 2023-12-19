import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

//  HOME: NEWS FEED/ UPDTES ON EVENTS, CREATE NEW EVEN AND LIST OF EVENTS TO HAPPEN IN TFF AS WELL AS STUFF THEY ARE DOING
//  PEAPLE IN THE PAGE AND THEIR EMAIL ADDRESS AND YOU CAN CLICK ON ONE AND EMAIL THEM
// PROFILE OF THE USERS AND STUDENT PROFILE SHOWS THEIR PERFROMANCE TRENDS
// NOTIFICATIONS IN FLUTTER FOR NEW EVENTS
// HOW TO GUIDES WITH COLLAPSIBLE LIST TILES 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fleischer Foundation',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SplashScreen(),
    );
  }
}