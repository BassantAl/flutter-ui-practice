
import 'package:auth_ui/widgets/content_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: ContentSplash(),
          ),
        ),
        Positioned(
          left: 45,
          top: 0,
          bottom:580 ,
          child: SvgPicture.asset('assets/images/line.svg',colorFilter: ColorFilter.mode(Colors.deepPurpleAccent, BlendMode.srcIn),)),
    
        Positioned(
          left: 23,
          top: 0,
          bottom:300 ,
          child: SvgPicture.asset('assets/images/light.svg',width: 30,height: 30,)),
        
        Positioned(
          left: 95,
          top: 0,
          bottom:630 ,
          child: SvgPicture.asset('assets/images/line.svg',colorFilter: ColorFilter.mode(Colors.deepPurpleAccent, BlendMode.srcIn),)),
    
        Positioned(
          left: 73,
          top: 0,
          bottom:345 ,
          child: SvgPicture.asset('assets/images/light.svg',width: 30,height: 30,)),
      ],
    );
  }
}
