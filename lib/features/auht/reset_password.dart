import 'package:exem/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../common/widgets/button_container.dart';
import '../common/widgets/password_form_field.dart';
import '../common/widgets/title_and_description.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TitleAndDescription(
                    title: "Xush kelibsiz!",
                    desc:
                        "O‘quv platformasiga kirish uchun quyida berilgan\nmaydonlarni to‘ldirib ro‘yxatdan o‘ting",
                  ),
                  SizedBox(height: 57.h),
                  const Text(
                    "Ro‘yxatdan o‘tish",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Open Sans",
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  PasswordFormField(
                    controller: passwordController,
                    hintText: "Parol",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Parolni kiriting";
                      }
                      if (value.length < 6) {
                        return "Parol kamida 6 ta belgidan iborat bo‘lishi kerak";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8.h),
                  PasswordFormField(
                    controller: confirmPasswordController,
                    hintText: "Parolni tasdiqlash",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Parolni tasdiqlang";
                      }
                      if (value != passwordController.text) {
                        return "Parollar mos emas";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 310.h),
                  ButtonContainer(
                    title: "Kirish",
                    buttonColor: const Color(0xffF5365C),
                    callback: () {
                      context.go(Routes.login);
                      // if (formKey.currentState?.validate() ?? false) {
                      //   context.read<SignUpBloc>().add(
                      //     SignUpRequested(
                      //       firstName: firstNameController.text.trim(),
                      //       lastName: lastNameController.text.trim(),
                      //       email: emailController.text.trim(),
                      //       phoneNumber: phoneController.text.trim(),
                      //       password: passwordController.text.trim(),
                      //     ),
                      //   );
                      // }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
