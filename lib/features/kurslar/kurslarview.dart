import 'package:exem/features/home/widgets/appbar.dart';
import 'package:exem/features/home/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cours_cart.dart';
import 'kurs_barchasi/courses_bloc.dart';
import 'kurs_barchasi/courses_state.dart';

class Kurslar extends StatelessWidget {
  const Kurslar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesBloc, CoursesState>(
      builder: (context, state) {
        return Scaffold(
          appBar: ApppBar(title: "Kurslar"),
          body: state.status == CoursesStatus.loading
              ? const Center(child: CircularProgressIndicator())
              : state.status == CoursesStatus.error
              ? const Center(child: Text("Xatolik yuz berdi"))
              : SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: const Color(0xff8898AA),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "OpenSans",
                    ),
                    children: const [
                      TextSpan(
                        text: "Kurslar",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " (Barchasi)",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                ...state.courses.map((course) => Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: KursCard(course: course),
                )),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
