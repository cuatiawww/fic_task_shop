import 'package:fic_task_shop/common/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBottomBar extends StatelessWidget {
  final String imageNavbar;
  final bool isActive;
  const TabBottomBar({
    Key? key,
    required this.imageNavbar,
    required this.isActive,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isActive
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xff9A9390),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imageNavbar,
                    width: 22,
                    height: 22,
                  ),
                ),
              )
            : Image.asset(
                imageNavbar,
                width: 22,
              ),
      ],
    );
  }
}
