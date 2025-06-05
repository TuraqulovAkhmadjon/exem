
import 'package:exem/features/common/widgets/button_container.dart';
import 'package:exem/features/home/widgets/appbar.dart';
import 'package:exem/features/home/widgets/bottom_navigation_bar.dart';
import 'package:exem/features/home/widgets/categories.dart';
import 'package:exem/features/home/widgets/empty_course.dart';
import 'package:exem/features/home/widgets/interviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/routes.dart';
import '../managers/home_bloc.dart';
import '../managers/home_state.dart';
import '../widgets/qoshil.dart';
import '../widgets/social_media.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == HomeStatus.success) {
          return Scaffold(
            appBar: ApppBar(title: "Salom Alik"),
            body: ListView(
              children: [
                Courses(),
                Categories(categories: state.categories),
                SocialMedia(),
                Interviews(interviews: state.interviews),
                Qoshil(),
              ],
            ),
            bottomNavigationBar: BottomNavBar(),
          );
        } else if (state.status == HomeStatus.error) {
          return Scaffold(
            appBar: AppBar(
              leadingWidth: 200.w,
              leading: ButtonContainer(
                title: "Login",
                buttonColor: Colors.red,
                callback: () => context.go(Routes.login),
                width: 100,height: 50.h,
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Center(
                child: Text(
                  "Xatolik yuz berdi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        }
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}

