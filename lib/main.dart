import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/register_page.dart';
import 'page1.dart';
import 'job_application_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
        '/main': (context) => const MainPage(),
        '/satu': (context) => MPage(),
        '/form': (context) => JobApplicationForm(),
      },
    );
  }
}
