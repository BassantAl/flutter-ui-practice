import 'package:auth_ui/screens/custom_text_feild.dart';
import 'package:auth_ui/screens/register_screen.dart';
import 'package:auth_ui/widgets/custom_button.dart';
import 'package:auth_ui/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ContentLogin extends StatelessWidget {
  const ContentLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 160),
              Logo(),
              Text(
                'Welcome Back',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 13),
              Text(
                'Log in to existing LOGO account',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 50),
              CustomTextFeild(
                hintText: 'UserName',
                prefixIcon: Icons.person_outline_outlined,
              ),
              SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Password',
                prefixIcon: Icons.lock_outline,
              ),
              SizedBox(height: 8),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              CustomButton(text: 'LOG IN',),
              SizedBox(height: 20),
              Text('or sign in using'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Ionicons.logo_facebook,
                    color: Colors.blue.shade900,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Ionicons.logo_google,
                    color: Colors.red.shade700,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Icon(Ionicons.logo_apple, size: 30),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      ' Sign Up',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
