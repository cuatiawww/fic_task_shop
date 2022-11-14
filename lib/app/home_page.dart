import 'package:fic_task_shop/app/list_item.dart';
import 'package:fic_task_shop/app/nav_bar.dart';
import 'package:fic_task_shop/common/my_color.dart';
import 'package:fic_task_shop/app/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NavBar(),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    text: 'Discover the most \nmodern furniture',
                  ),
                ),
                SizedBox(height: 30),
                // PageView(scrollDirection: Axis.horizontal, children: []),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                          color: MyColor.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'All',
                        style: GoogleFonts.poppins(
                          color: MyColor.whiteBG,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ...['Living Room', 'Bedroom', 'Dining Room', 'Kitchen'].map(
                      (title) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 5),
                        child: Center(
                          child: Text(
                            title,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    text: 'Recomended Furniture',
                  ),
                ),
                SizedBox(height: 19),
                const ListItem(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 40,
        //   vertical: 14,
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const TabBottomBar(
              imageNavbar: 'assets/images/homeic.png',
              isActive: true,
            ),
            const TabBottomBar(
              imageNavbar: 'assets/images/keranjang.png',
              isActive: false,
            ),
            const TabBottomBar(
              imageNavbar: 'assets/images/star.png',
              isActive: false,
            ),
            const TabBottomBar(
              imageNavbar: 'assets/images/person.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
