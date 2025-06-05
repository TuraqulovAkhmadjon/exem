import 'package:flutter/material.dart';

class ApppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ApppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: CustomPaint(painter: _AppBarItem(), child: Container()),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.white,
        ),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40);
}

class _AppBarItem extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFF5365C)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(-1, size.height - 20)
      ..quadraticBezierTo(
        size.width / 1.5,
        size.height,
        size.width,
        size.height - 25,
      )
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
