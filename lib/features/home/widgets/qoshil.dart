import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Qoshil extends StatelessWidget {
  const Qoshil({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Stack(
        children: [
          Image.asset("assets/image/qo'shil.png", width: 343.w, height: 267.h,fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
