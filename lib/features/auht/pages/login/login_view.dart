import 'package:exem/features/auht/pages/login/phone_form_field.dart';
import 'package:exem/features/auht/pages/login/with_account.dart';
import 'package:exem/features/common/widgets/password_form_field.dart';
import 'package:exem/features/common/widgets/title_and_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../common/widgets/button_container.dart';
import '../../maneger/login/login_bloc.dart';
import '../../maneger/login/login_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        print("Login status: ${state.status}");
        if (state.status == LoginStatus.success) {
          print("Login muvaffaqiyatli, homega o‘tmoqda...");
          context.go(Routes.home);
        } else if (state.status == LoginStatus.error) {
          print("Loginda xatolik: ${state.errorMessage}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? "Ishlamadi!")),
          );
        }
      },
      builder: (context, state) {
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
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleAndDescription(
                      title: "Xush kelibsiz!",
                      titleFontSize: 24,
                      titleFontWeight: FontWeight.w600,
                      desc:
                          "O‘quv platformasiga kirish uchun quyida elektron pochtangiz va parolingizni kiriting",
                      descFontSize: 13,
                      descFontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 57.h),
                    Center(
                      child: Text(
                        "Kirish",
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
                    PhoneFormField(
                      phoneNumberController: phoneNumberController,
                    ),
                    SizedBox(height: 8.h),
                    PasswordFormField(
                      controller: passwordController,
                      hintText: "Parol",
                    ),
                    SizedBox(height: 12.h),
                    GestureDetector(
                      onTap: () {
                        context.go(Routes.register);
                      },
                      child: Text(
                        "Parolni unutdingizmi",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Open Sans",
                          color: Color(0xffCED4DA),
                        ),
                      ),
                    ),
                    SizedBox(height: 129.h),
                    Divider(height: 1, color: Colors.white30),
                    SizedBox(height: 16.h),
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
                    WithAccount(),
                    SizedBox(height: 32.h),
                    ButtonContainer(
                      title: "Kirish",
                      buttonColor: Color(0xffF5365C),
                      callback: () {
                        context.read<LoginBloc>().add(
                          LoginRequest(
                            email: phoneNumberController.text,
                            password: passwordController.text,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 8.h),
                    ButtonContainer(
                      title: "Ro‘yxatdan o‘tish",
                      buttonColor: Color(0xff3F5170),
                      callback: () {
                        context.go(Routes.signUp);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
