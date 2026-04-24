import 'package:auth_ui/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hintText, required this.prefixIcon});
  final String hintText;
  final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF2F2F2),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xff515151)
        ),
        prefixIcon: Icon(prefixIcon,color: Color(0xff515151),),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.transparent)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.secondary),
        ),
      ),
    );
  }
}
