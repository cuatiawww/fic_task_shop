import 'package:fic_task_shop/common/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBottomBar extends StatefulWidget {
  const TabBottomBar({super.key});

  @override
  State<TabBottomBar> createState() => _TabBottomBarState();
}

class _TabBottomBarState extends State<TabBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: MyColor.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          )
        ],
      ),
    );
  }
}
