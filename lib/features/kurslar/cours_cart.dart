import 'package:exem/data/model/courses/courses_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:exem/features/common/widgets/text_button.dart';

class KursCard extends StatelessWidget {
  final CoursesModel course;

  const KursCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            child: Image.network(
              course.image ?? "https://via.placeholder.com/335x194", // Agar rasm bo‘lmasa
              width: 335.w,
              height: 194.h,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.user,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: "OpenSans",
                    color: const Color(0xff172B4D),
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  course.category ?? "Noma'lum holat",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xff525F7F),
                    fontWeight: FontWeight.w400,
                    fontFamily: "OpenSans",
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  course.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: const Color(0xff8898AA),
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/cash.svg"),
                    SizedBox(width: 3.w),
                    Text(
                      "${course.price} UZS",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        color: const Color(0xff8898AA),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Text(
                      "${course.runtimeType} UZS",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "OpenSans",
                        fontSize: 13.sp,
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Center(
                  child: TextButtonContainer(
                    width: 311.w,
                    height: 40.h,
                    text: "Kursga o‘tish",
                    callback: () {},
                    svgPath: "assets/icons/right.svg",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
