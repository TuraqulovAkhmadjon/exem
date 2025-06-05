import 'package:exem/features/auht/pages/sign_up/user_feild.dart';
import 'package:exem/features/common/widgets/title_and_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../common/widgets/button_container.dart';
import '../login/with_account.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  // final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 124, right: 20, left: 20),
          child: Column(
            children: [
              TitleAndDescription(
                title: "Xush kelibsiz!",
                titleFontSize: 24,
                titleFontWeight: FontWeight.w600,
                desc:
                    "O‘quv platformasiga kirish uchun quyida berilgan "
                    "maydonlarni to‘ldirib ro‘yxatdan o‘ting",
                descFontSize: 13,
                descFontWeight: FontWeight.w400,
              ),
              SizedBox(height: 57.h),
              Center(
                child: Text(
                  "Ro‘yxatdan o‘tish",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Open Sans",
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              UserField(controller: nameController, hintText: "Ism"),
              SizedBox(height: 8),
              UserField(controller: surnameController, hintText: "Familiya"),
              SizedBox(height: 8),
              UserField(
                controller: emailController,
                iconPath: "assets/icons/message.svg",
                hintText: "Email",
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Email maydoni bo‘sh bo‘lishi mumkin emas";
                  }
                  final emailRegex = RegExp(
                    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                  );
                  if (!emailRegex.hasMatch(value.trim())) {
                    return "To‘g‘ri email manzilini kiriting";
                  }
                  return null;
                },
              ),
              SizedBox(height: 60.h),
              Divider(height: 1, color: Colors.white30),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  "Quyidagilar orqali kirish",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Open Sans",
                    color: Color(0xff8898AA),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(height: 16.h),
              WithAccount(),
              SizedBox(height: 60.h),
              SizedBox(
                width: 335.w,
                height: 38.h,
                child: RichText(
                  textAlign: TextAlign.center,

                  text: TextSpan(
                    style: TextStyle(
                      color: Color(0xff8898AA),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Open Sans",
                    ),
                    children: [
                      TextSpan(text: "Tizimga kirish orqali siz "),
                      TextSpan(
                        text: "foydalanish shartlari",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: " va "),
                      TextSpan(
                        text: "maxfiylik siyosatiga",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: " roziligingizni tasdiqlaysiz"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              ButtonContainer(
                title: "Davom etish",
                buttonColor: Color(0xffF5365C),
                callback: () {
                  // if (formKey.currentState?.validate() ?? false) {
                    context.go(Routes.register );
                  // } else {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
