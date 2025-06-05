import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UserField extends StatelessWidget {
  const UserField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.iconPath = "assets/icons/user.svg",
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController controller;
  final String hintText;
  final String iconPath;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: 355.w,
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(iconPath),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xffADB5BD),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
