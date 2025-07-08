// import 'package:cip_website/dashboard.dart';
import 'package:cip_website/views/add_planning_dashboard.dart';
import 'package:cip_website/views/planning_screen.dart';
// import 'package:cip_website/views/dashboard.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlanningScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
