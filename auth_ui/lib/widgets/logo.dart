
import 'package:auth_ui/app_colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(
        'LOGO',
        style: TextStyle(
          fontSize: 100,
          fontWeight: FontWeight.w500,
          fontFamily: 'Prime',
          color: Colors.white,
        ),
      ),
    );
  }
}
