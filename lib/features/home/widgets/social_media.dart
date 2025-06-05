import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 24.h, horizontal: 20.w),
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 20.h),
        width: 335.w,
        height: 115.h,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadiusGeometry.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF888B8F).withValues(alpha: 0.1),
              offset: Offset(0, 4),
              blurRadius: 16,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ijtimoiy tarmoqlarimiz:",
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 288.w,
              height: 32.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/icons/instagram.svg",
                    width: 32.w,
                    height: 32.h,
                  ),
                  SvgPicture.asset(
                    "assets/icons/tik_tok.svg",
                    width: 32.w,
                    height: 32.h,
                  ),
                  SvgPicture.asset(
                    "assets/icons/yote_be.svg",
                    width: 32.w,
                    height: 32.h,
                  ),
                  SvgPicture.asset(
                    "assets/icons/telegram.svg",
                    width: 32.w,
                    height: 32.h,
                  ),
                  SvgPicture.asset(
                    "assets/icons/facebook.svg",
                    width: 32.w,
                    height: 32.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
