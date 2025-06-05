import 'package:exem/features/common/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        width: 335.w,
        height: 210.h,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadiusGeometry.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 16,
              color: Color(0xFF888B8F).withValues(alpha: 0.1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/image/forwoman.png",
              width: 57.w,
              height: 48.h,
              fit: BoxFit.cover,
            ),
            Text(
              "Sizda hali boshlangan kurs mavjud emas. Ko‘plab foydali kurslarimiz orasidan bittasini tanlang.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButtonContainer(
              text: "Kurs sotib olish",
              width: 150.w,
              height: 34.h,
              callback: () {},
              color: Color(0xFFF5365C),
            ),
          ],
        ),
      ),
    );
  }
}
