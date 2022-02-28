// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customContainer.dart';
import 'package:eagle_tip/UI/Widgets/customHeader2.dart';
import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/Home_screen.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class SpecificNotification extends StatelessWidget {
  SpecificNotification(
      {Key? key, required this.notifyName, required this.notifyContent})
      : super(key: key);
  final String notifyName;
  final String notifyContent;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        floatingActionButton: Responsive.isDesktop(context)
            ? MenuButton(isTapped: false, width: width)
            : SizedBox(),
        body: SingleChildScrollView(
          child: Container(
            height: Responsive.isDesktop(context) ? height * 1.18 : height,
            color: backGround_color,
            child: Padding(
              padding: EdgeInsets.only(
                top: Responsive.isDesktop(context)
                    ? height * 0.02
                    : height * 0.1,
                left: Responsive.isDesktop(context) ? 0.0 : width * 0.03,
                right: Responsive.isDesktop(context) ? 0.0 : width * 0.02,
              ),
              child: Column(
                children: [
                  Responsive.isDesktop(context)
                      ? Navbar(
                          width: width,
                          height: height,
                          text1: "Home",
                          text2: "Sites",
                          )
                      : CustomHeader2(),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Responsive.isDesktop(context)
                      ? CustomContainer(
                          opacity: 0.2,
                          child: Padding(
                            padding: EdgeInsets.only(top: height * 0.01),
                            child: Column(
                              children: [
                                Text(
                                  notifyName,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins"),
                                ),
                                SizedBox(
                                  height: height * 0.06,
                                ),
                                Container(
                                  width: width * 0.4,
                                  child: Text(
                                    notifyContent,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins"),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.08,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context, false);
                                  },
                                  child: Container(
                                    width: width * 0.3,
                                    height: height * 0.07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      color: Color(0xFF5081DB),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Back",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Poppins"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: width,
                          topPad: 10.0,
                          height: height)
                      : Column(
                          children: [
                            Text(
                              notifyName,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins"),
                            ),
                            SizedBox(
                              height: height * 0.06,
                            ),
                            Container(
                              width: width * 0.9,
                              child: Text(
                                notifyContent,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.08,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context, false);
                              },
                              child: Container(
                                width: width * 0.75,
                                height: height * 0.07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: Color(0xFF5081DB),
                                ),
                                child: Center(
                                  child: Text(
                                    "Back",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
