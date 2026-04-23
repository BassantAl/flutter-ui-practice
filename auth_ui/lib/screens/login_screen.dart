import 'package:auth_ui/app_colors.dart';
import 'package:auth_ui/widgets/content_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContentLogin(),
        Positioned(
          left: 40,
          child: SvgPicture.asset(
            'assets/images/Rectangle 12.svg',
            colorFilter: ColorFilter.mode(AppColors.secondary, BlendMode.srcIn),
          ),
        ),
        Positioned(
          child: SvgPicture.asset(
            'assets/images/Rectangle 11.svg',
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
