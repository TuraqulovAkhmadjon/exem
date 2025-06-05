import 'package:exem/data/model/categories/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../kurslar/kurs_barchasi/courses_bloc.dart';

class CategoryItem extends StatelessWidget {
  final CategoriesModel category;
  final bool isSelected;

  CategoryItem({
    super.key,
    required this.category,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CoursesBloc>().add(CoursesLoad(categoryId: category.id));
      },
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            padding: EdgeInsets.all(7.3.r),
            width: 160.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: isSelected ? Colors.black : Color(0xFFFDD3DB),
                width: 1.w,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.title,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Color(0xFF222222),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Jami ${category.totalCourses}ta dars",
                  style: TextStyle(
                    color: isSelected ? Colors.white70 : Color(0xFF8898AA),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 3.w,
            bottom: 2.h,
            child: Transform.rotate(
              angle: 0,
              child: Image.network(
                category.icon,
                width: 50.w,
                height: 50.h,
                color: isSelected ? Colors.white70 : null,
                colorBlendMode: isSelected ? BlendMode.modulate : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
