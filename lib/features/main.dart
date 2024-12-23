import 'package:energy_monitoring_app/features/login_with_state.dart';
import 'package:energy_monitoring_app/features/sign_up.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Add your app's theme if needed
      initialRoute: '/signup', // Set 'SignUpPage' as the initial route
      routes: {
        '/signup': (context) => const SignUpPage(),
        '/login_with_state': (context) => const LoginWithStatePage(),
      },
    );
  }
}
