import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/routes.dart';
import '../common/widgets/button_container.dart';
import '../common/widgets/title_and_description.dart';
import '../common/widgets/verification_code.dart';

class SmsCodeView extends StatefulWidget {
  const SmsCodeView({super.key});

  @override
  State<SmsCodeView> createState() => _SmsCodeViewState();
}

class _SmsCodeViewState extends State<SmsCodeView> {
  String? codeValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 124.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TitleAndDescription(
                title: "Xush kelibsiz!",
                titleFontSize: 24,
                titleFontWeight: FontWeight.w600,
                desc:
                    "O‘quv platformasiga kirish uchun quyida telefon\nraqamingizga yuborilgan tasdiqlash kodini kiriting",
                descFontSize: 13,
                descFontWeight: FontWeight.w400,
              ),
              SizedBox(height: 57.h),

              const Text(
                "Tasdiqlash kodi",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Open Sans",
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 16.h),

              VerificationCodeInput(
                length: 6,
                onCompleted: (code) {
                  setState(() {
                    codeValue = code;
                  });
                },
              ),
              const Spacer(),
              ButtonContainer(
                title: "Kirish",
                buttonColor: const Color(0xffF5365C),
                callback: _onSubmitCode,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmitCode() {
    if (codeValue == "666666") {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                "assets/icons/validation_success.svg",
                width: 60.w,
                height: 60.h,
              ),
              SizedBox(height: 20.h),
              const TitleAndDescription(
                title: "Muvaffaqiyatli tasdiqlandi",
                titleColor: Color(0xff595959),
                desc: "Telefon raqamingiz muvaffaqiyatli \ntasdiqlandi",
                descColor: Color(0xff8898AA),
              ),
            ],
          ),
          actions: [
            Center(
              child: ButtonContainer(
                title: "Tushunarli",
                buttonColor: const Color(0xff4FD69C),
                callback: () => context.go(Routes.resetPassword),
              ),
            ),
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Kod noto‘g‘ri.")));
    }
  }
}
