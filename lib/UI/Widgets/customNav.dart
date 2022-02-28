import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

int index = 0;

class Navbar extends StatefulWidget {
  const Navbar({
    Key? key,
    required this.width,
    required this.height,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final double width;
  final double height;
  final String text1;
  final String text2;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: Responsive.isDesktop(context),
      child: Container(
        color: Color(0xFF2B343B),
        width: widget.width,
        height: widget.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Responsive.isDesktop(context)
                  ? widget.width * 0.42
                  : widget.width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: widget.width * 0.03,
                  ),
                  Logo(width: widget.width * 0.6),
                  Padding(
                    padding: EdgeInsets.only(top: widget.height * 0.024),
                    child: Container(
                      width: Responsive.isDesktop(context)
                          ? widget.width * 0.15
                          : widget.width * 0.27,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.homeScreen);
                                setState(() {
                                  index = 0;
                                });
                              },
                              child: Navtext(
                                color: index == 0
                                    ? Colors.white
                                    : Color(0xFFA0A3BD),
                                width: widget.width,
                                text: "Home",
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.messagemain);
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: Navtext(
                                color: index == 1
                                    ? Colors.white
                                    : Color(0xFFA0A3BD),
                                text: "Chat",
                                width: widget.width,
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.notifications);
                                setState(() {
                                  index = 2;
                                });
                              },
                              child: Navtext(
                                color: index == 2
                                    ? Colors.white
                                    : Color(0xFFA0A3BD),
                                text: "Notifications",
                                width: widget.width,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: widget.width * 0.07),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Common.assetImages + "search.png"),
                    SizedBox(
                      width: widget.width * 0.02,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.myProfile);
                        },
                        child: Image.asset(Common.assetImages + "image1.png")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Navtext extends StatelessWidget {
  const Navtext({
    Key? key,
    required this.text,
    required this.width,
    required this.color,
  }) : super(key: key);

  final double width;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: Responsive.isDesktop(context) ? width * 0.01 : width * 0.02,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
    );
  }
}
