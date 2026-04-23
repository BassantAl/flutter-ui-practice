import 'package:auth_ui/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentSplash extends StatelessWidget {
  const ContentSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 115),
        Logo(),
        SizedBox(height: 50),
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/vecteezy_cybersecurity-smartphone-data_11126367.jpg',
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Text(
          'LOREM IPSUM',
          style: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10,),
        Text(
          'Lorem Ipsum is a dummy text \n used as placeholder',
          style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.normal ,color: Colors.grey.shade700),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
