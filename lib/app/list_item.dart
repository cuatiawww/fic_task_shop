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
    List<String> product1 = [
      'img1.jpg',
      'kursi2.jpg',
    ];
    List<String> product1_name = [
      'Stylish Chair',
      'Modern Table',
    ];
    List<String> product1_value = [
      'Rp. 699.999',
      'Rp. 999.987',
    ];
    List<String> product1_rate = [
      '4.2',
      '4.5',
    ];
    List<String> product2 = [
      'kursi3.jpg',
      'kursi4.jpg',
    ];
    List<String> product2_name = [
      'Wooden Console',
      'Brown Armchair',
    ];
    List<String> product2_value = [
      'Rp. 239.989',
      'Rp. 699.978',
    ];
    List<String> product2_rate = [
      '4.1',
      '4.8',
    ];
    return Column(
      children: [
        SizedBox(
          height: 264,
          child: ListView.builder(
              itemCount: product1.length,
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
                          child:
                              Image.asset('assets/images/${product1[index]}'),
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
                            product1_name[index],
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
                              product1_value[index],
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: MyColor.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Icon(
                              Icons.star,
                              color: MyColor.yellowList,
                              size: 14,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 12),
                          child: Text(
                            product1_rate[index],
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
              itemCount: product2.length,
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
                          child:
                              Image.asset('assets/images/${product2[index]}'),
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
                            product2_name[index],
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
                              product2_value[index],
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: MyColor.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Icon(
                              Icons.star,
                              color: MyColor.yellowList,
                              size: 14,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 12),
                          child: Text(
                            product2_rate[index],
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
