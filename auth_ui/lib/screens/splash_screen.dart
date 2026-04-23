import 'package:auth_ui/screens/login_screen.dart';
import 'package:auth_ui/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLoginScreen();
  }

  

  @override
  Widget build(BuildContext context) {
    return SplashViewBody();
  }

  Future<Null> navigateToLoginScreen() {
    return Future.delayed(Duration(seconds: 3), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  });
  }
}
