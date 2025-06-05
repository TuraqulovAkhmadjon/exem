
import 'package:exem/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/interview/interview_model.dart';
import 'interview_item.dart';

class Interviews extends StatelessWidget {
  const Interviews({super.key, required this.interviews});
  final List<InterviewModel> interviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "INTERVYULAR",
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 251.h,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InterviewItem(interview: interviews[index],),
            ),
          ),
          SizedBox(
            width: 173.w,
            height: 21.h,
            child: GestureDetector(
              onTap: () {context.go(Routes.kurslar);},
              child: Row(
                spacing: 4.w,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Barcha intervyular",
                    style: TextStyle(
                      color: Color(0xFF8898AA),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/arrow_right.svg",
                    width: 20.w,
                    height: 20.h,
                    colorFilter: ColorFilter.mode(
                      Color(0xFF8898AA),
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
