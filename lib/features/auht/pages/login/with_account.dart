import 'package:flutter/material.dart';

import '../../../common/widgets/button_with_logo.dart';

class WithAccount extends StatelessWidget {
  const WithAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonWithIcon(
          image: "assets/icons/google.svg",
          title: "Google",
          callback: () {},
          containerColor: Colors.white,
          titleColor: Color(0xff172B4D),
          padding: EdgeInsetsGeometry.all(10),
        ),
        ButtonWithIcon(
          image: "assets/icons/apple.svg",
          title: "Apple",
          callback: () {},
          containerColor: Colors.white,
          titleColor: Color(0xff172B4D),
          padding: EdgeInsetsGeometry.all(10),
        ),
      ],
    );
  }
}
