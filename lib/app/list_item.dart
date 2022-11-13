import 'package:fic_task_shop/common/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 264,
          child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  height: 210,
                  width: 165,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.white,
                  ),
                  child: Column(children: [
                    SizedBox(
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          child: Image.asset('assets/images/img1.jpg'),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            child: const Padding(
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.red,
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Row(children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        child: Center(
                          child: Text(
                            'Stylist Chair',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 12),
                          child: Center(
                            child: Text(
                              '\$170',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: MyColor.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 55),
                          child: Center(
                            child: Icon(
                              Icons.star,
                              color: MyColor.yellowList,
                              size: 15,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 12),
                          child: Text(
                            '4.8',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: MyColor.silver,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                );
              }),
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 264,
          child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  height: 210,
                  width: 165,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.white,
                  ),
                  child: Column(children: [
                    SizedBox(
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          child: Image.asset('assets/images/img1.jpg'),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            child: const Padding(
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.red,
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Row(children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        child: Center(
                          child: Text(
                            'Stylist Chair',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 12),
                          child: Center(
                            child: Text(
                              '\$170',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: MyColor.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 55),
                          child: Center(
                            child: Icon(
                              Icons.star,
                              color: MyColor.yellowList,
                              size: 15,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 12),
                          child: Text(
                            '4.8',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: MyColor.silver,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                );
              }),
        ),
      ],
    );
  }
}
