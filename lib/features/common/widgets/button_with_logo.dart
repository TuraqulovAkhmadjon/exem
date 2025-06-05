import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    super.key,
    required this.image,
    required this.title,
    required this.padding,
    required this.callback,

    this.iconWidth = 20,
    this.iconHeight = 20,
    this.titleSize = 14,
    required this.containerColor,
    required this.titleColor,
    this.titleWeight = FontWeight.w600,
  });

  final String image, title;
  final EdgeInsetsGeometry padding;
  final VoidCallback callback;
  final double iconWidth, iconHeight, titleSize;
  final Color containerColor, titleColor;
  final FontWeight titleWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: padding,
        alignment: Alignment.center,
        width: 163.w,
        height: 44.h,

        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Row(
            spacing: 5.w,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                width: iconWidth.w,
                height: iconHeight.h,
                fit: BoxFit.cover,
              ),
              Text(
                title,
                style: TextStyle(
                  color: titleColor,
                  fontSize: titleSize.sp,
                  fontWeight: titleWeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
