import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
    required this.title,
    required this.desc,
    this.titleFontSize = 24,
    this.descFontSize = 13,
    this.titleFontWeight = FontWeight.w600,
    this.descFontWeight = FontWeight.w400,
    this.titleColor = Colors.white,
    this.descColor = Colors.white,
    this.titleLetterSpacing = -1.2,
    this.descLetterSpacing = 0,
    this.titleDecoration = TextDecoration.none,
    this.descDecoration = TextDecoration.none,
  });

  final String title, desc;
  final double titleFontSize, descFontSize;
  final double titleLetterSpacing, descLetterSpacing;
  final TextDecoration titleDecoration, descDecoration;
  final FontWeight titleFontWeight, descFontWeight;
  final Color titleColor, descColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              color: titleColor,
              fontSize: titleFontSize.sp,
              fontFamily: "OpenSans",
              fontWeight: titleFontWeight,
              letterSpacing: titleLetterSpacing,
              decoration: titleDecoration,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            desc,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(
              color: descColor,
              fontSize: descFontSize.sp,
              fontFamily: "Open Sans",
              fontWeight: descFontWeight,
              letterSpacing: descLetterSpacing,
              decoration: descDecoration,
            ),
          ),
        ],
      ),
    );
  }
}
