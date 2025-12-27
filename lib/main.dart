import 'package:evalucion_2/MenuScreen.dart';
import 'package:evalucion_2/screens/LoginScreen.dart';
import 'package:evalucion_2/screens/RegistroScreen.dart';
import 'package:evalucion_2/screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const WelcomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/registro": (context) => const RegistroScreen(),
        "/menu": (context) => const MenuScreen(),
      },
    );
  }
}
