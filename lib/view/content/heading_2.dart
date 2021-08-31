import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptek_flutter_web/controller/utils/static_color.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class HeadingTwo extends StatefulWidget {
  const HeadingTwo({Key? key}) : super(key: key);

  @override
  _HeadingTwoState createState() => _HeadingTwoState();
}

class _HeadingTwoState extends State<HeadingTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveWrapper(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 600,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Image(
                          width: 350,
                          image: AssetImage('assets/logo/logo.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: [
                          iconHistory(
                              FontAwesome.institution, "Founded", "2012"),
                          SizedBox(
                            width: 10,
                          ),
                          iconHistory(FontAwesome.users, "Team", "> 50"),
                          SizedBox(
                            width: 10,
                          ),
                          iconHistory(FontAwesome.trophy, "Project", "> 100"),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  Container(
                    width: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WHO WE ARE",
                          style: GoogleFonts.bebasNeue(
                              fontSize: 45,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          "PT IPTEK DIGITAL NUSANTARA also known as IPTEK is a future technology company had embedded innovative technologies and enabling companies to reimagine their businesses, processes, and experiences. Our goal is to provide you with comprehensive solutions that will enhance your company to the next level.",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget iconHistory(IconData iconData, String nama, String penjelasan) {
    return Row(
      children: [
        Container(
          child: Icon(
            iconData,
            size: 50,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(children: [
          Text(
            nama,
            style: GoogleFonts.bebasNeue(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            penjelasan,
            style: GoogleFonts.bebasNeue(
              fontSize: 20,
            ),
          ),
        ]),
      ],
    );
  }
}
