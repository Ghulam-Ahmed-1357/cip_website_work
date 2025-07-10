// import 'package:cip_website/dashboard.dart';
// import 'package:cip_website/views/add_planning_dashboard.dart';
import 'package:cip_website/pages/authentication/login_screen.dart';
// import 'package:cip_website/pages/planning/planning_screen.dart';
// import 'package:cip_website/views/dashboard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(
    fileName: ".env",
  ); // 👈 REQUIRED before accessing dotenv.env

  runApp(LoginScreen());
}
