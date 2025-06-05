import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;

  const PasswordFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355.w,
      height: 44.h,
      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureText,
        obscuringCharacter: "*",
        validator: widget.validator,
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 16.sp),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 12.h,
            horizontal: 12.w,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/icons/lock.svg",
              width: 20.w,
              height: 20.w,
            ),
          ),
          suffixIcon: IconButton(
            icon: SvgPicture.asset(
              obscureText
                  ? "assets/icons/eye.svg"
                  : "assets/icons/eye.svg",
              width: 20.w,
              height: 20.w,
            ),
            onPressed: () => setState(() => obscureText = !obscureText),
          ),
          hintText: widget.hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
