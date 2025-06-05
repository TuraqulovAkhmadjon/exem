import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    super.key,
    required this.title,
    required this.callback,
    this.width,
    this.height,
    this.textColor,
    this.titleFontWeight = FontWeight.w500,
    this.buttonColor,
    this.svgPath,
  });

  final String title;
  final VoidCallback callback;
  final double? width, height;
  final Color? textColor, buttonColor;
  final String? svgPath;
  final FontWeight titleFontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 43.h,
      child: Material(
        color: buttonColor ?? Colors.blue,
        borderRadius: BorderRadius.circular(4.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(4.r),
          onTap: callback,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 14.sp,
                  fontWeight: titleFontWeight,
                  fontFamily: "OpenSans",
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
      ),
    );
  }
}
