import 'package:exem/features/auht/pages/login/phone_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/routes.dart';
import '../common/widgets/button_container.dart';
import '../common/widgets/title_and_description.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          padding: EdgeInsets.only(top: 124, right: 20, left: 20),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TitleAndDescription(
                      title: "Xush kelibsiz!",
                      titleFontSize: 24,
                      titleFontWeight: FontWeight.w600,
                      desc:
                          "O‘quv platformasiga kirish uchun telefon raqamingizni \nkiriting",
                      descFontSize: 13,
                      descFontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 57.h),
                    Center(
                      child: Text(
                        "Telefon raqami",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: "OpenSans",
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    PhoneFormField(phoneNumberController: phoneController),
                  ],
                ),
              ),
              SizedBox(height: 338.h),
              ButtonContainer(
                title: "Kirish",
                buttonColor: Color(0xffF5365C),
                callback: () {
                  String phone = phoneController.text.trim();
                  if (phone.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Iltimos, telefon raqamini kiriting"),
                      ),
                    );
                    return;
                  }
                  context.go(Routes.smsCode);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
