import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptek_flutter_web/controller/utils/static_color.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class HeadingOne extends StatelessWidget {
  const HeadingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveWrapper(
        child: Stack(
          children: [
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.srcOver),
                  image: const AssetImage(
                    'assets/image/page-1/bg.jpg',
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      width: 350,
                      image: AssetImage('assets/logo/logo.png'),
                    ),
                  ),
                  Text(
                    "PT. IPTEK DIGITAL NUSANTARA",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 32, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: StaticColor.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Lets Get Started",
                        style: GoogleFonts.bebasNeue(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
