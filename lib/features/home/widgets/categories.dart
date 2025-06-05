import 'package:exem/core/routing/routes.dart';
import 'package:exem/data/model/categories/categories_model.dart';
import 'package:exem/features/common/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categories});

  final List<CategoriesModel> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      width: double.infinity,
      height: 397.h,
      color: Color(0xFFFBF2F4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kategoriyalar",
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 16.h,
                mainAxisExtent: 50.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) =>
                  CategoryItem(category: categories[index]),
            ),
          ),
          TextButtonContainer(
            width: 355.w,
            height: 44.h,
            callback: () {context.go(Routes.kurslar);},
            text: "Barcha categoriyalar",
          ),
        ],
      ),
    );
  }
}
