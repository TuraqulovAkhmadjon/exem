import 'package:exem/features/auht/pages/login/with_account.dart';
import 'package:exem/features/common/widgets/password_form_field.dart';
import 'package:exem/features/common/widgets/title_and_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../common/widgets/button_container.dart';
import '../../maneger/login/login_bloc.dart';
import '../../maneger/login/login_state.dart';

class PhoneFormField extends StatelessWidget {
  const PhoneFormField({super.key, required this.phoneNumberController});

  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneNumberController,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.all(12),
          child: SvgPicture.asset("assets/icons/phone.svg"),
        ),
        hintText: "+998",
        hintStyle: TextStyle(fontSize: 16.sp, color: Colors.black38),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(4.r),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
      ),
    );
  }
}
