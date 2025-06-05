import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextButtonContainer extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  final double? width;
  final double? height;
  final Color? color;
  final TextStyle? textStyle;
  final String? svgPath;

  const TextButtonContainer({
    super.key,
    required this.text,
    required this.callback,
    this.width,
    this.height,
    this.color,
    this.textStyle,
    this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: width ?? 150.w,
        height: height ?? 34.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: color ?? const Color(0xffF5365C),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              text,
              style: textStyle ??
                  TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: "OpenSans",
                    color: Colors.white,
                  ),
            ),
            if (svgPath != null) ...[
              SizedBox(width: 8.w),
              SvgPicture.asset(
                svgPath!,
                width: 20.w,
                height: 20.h,
                fit: BoxFit.none,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
