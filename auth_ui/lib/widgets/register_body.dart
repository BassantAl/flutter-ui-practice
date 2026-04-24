import 'package:auth_ui/screens/custom_text_feild.dart';
import 'package:auth_ui/screens/login_screen.dart';
import 'package:auth_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'Let’s Get Started!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Text(
                'Create an account on MNZL to get all features',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff515151),
                ),
              ),
              SizedBox(height: 30),
              CustomTextFeild(
                hintText: 'First Name',
                prefixIcon: Icons.person_outline_outlined,
              ),
              SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Last Name',
                prefixIcon: Icons.person_outline_outlined,
              ),
              SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'User Name',
                prefixIcon: Icons.person_outline_outlined,
              ),
              SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Email',
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Password',
                prefixIcon: Icons.lock_outline,
              ),
              SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Confirm Password',
                prefixIcon: Icons.lock_outline,
              ),
              SizedBox(height: 40),
              CustomButton(text: 'Create'),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Login here',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
