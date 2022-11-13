import 'package:fic_task_shop/common/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 22,
          width: 18,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/filter.png'))),
        ),
        Container(
          child: Text(
            'Home',
            style: GoogleFonts.poppins(
              color: MyColor.home,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/search.png'))),
        ),
      ],
    );
  }
}
