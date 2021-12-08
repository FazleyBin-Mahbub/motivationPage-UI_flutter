import 'package:flutter/material.dart';
import 'package:flutter_practice/this%20months%20challenge/Motivation%20Page/data/listData.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class MotiVationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'Tips & Strategies',
                style: GoogleFonts.aclonica(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Motivation',
                    style: GoogleFonts.raleway(
                      color: Color(0xffa8a8a8),
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Watch All',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffed714f),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Container(
                height: size.height / 3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: horizontalList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AspectRatio(
                      aspectRatio: 2.6 / 3.5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(horizontalList[index].image),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, bottom: 5),
                                child: Text(
                                  horizontalList[index].text,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            _buildContainer(
              height: size.height / 12,
              width: double.infinity,
              icon: Mdi.foodApple,
              text: 'Diets',
              iconColor: Color(0xff7fd3cc),
            ),
            SizedBox(
              height: 10,
            ),
            _buildContainer(
              height: size.height / 12,
              width: double.infinity,
              icon: Mdi.weightLifter,
              text: 'Exercise',
              iconColor: Color(0xffe3866e),
            ),
            SizedBox(
              height: 10,
            ),
            _buildContainer(
              height: size.height / 12,
              width: double.infinity,
              icon: Mdi.meditation,
              text: 'Meditation',
              iconColor: Color(0xff764ba2),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(
    {IconData icon, double height, width, String text, Color iconColor}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15),
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xfff9fafc),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: iconColor,
          size: 35,
        ),
        title: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}
