// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/authentication.dart';
import 'package:eagle_tip/Services/authentication_helper.dart';
import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/custom_webbg.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eagle_tip/Models/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? isTapped = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Responsive.isDesktop(context)
          ? MenuButton(isTapped: false, width: width)
          : SizedBox(),
      body: SingleChildScrollView(
        child: Container(
          height: Responsive.isDesktop(context) ? height : height * 1.5,
          color: backGround_color,
          child: Responsive.isDesktop(context)
              ? Stack(
                  children: [
                    Opacity(opacity: 0.2, child: WebBg()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Navbar(
                          width: width,
                          height: height,
                          text1: "Home",
                          text2: "Chat",
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        SiteNameAndLocation(fontSize: 17.0, fontSize2: 13.0),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.siteDetails,
                            );
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                Common.assetImages + "Ellipse 49.png",
                                width: width * 0.15,
                              ),
                              SizedBox(
                                width: width * 0.068,
                                child: Text(
                                  "Request Fuel",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: width * 0.016,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: "Poppins"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.siteScreen);
                            },
                            child: SiteContainer(
                                width: width, text: "Sites", height: height)),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.crudscreen);
                          },
                          child: SiteContainer(
                              width: width,
                              text: "Edit Employees",
                              height: height),
                        )
                      ],
                    ),
                    /*
                    Positioned(
                      bottom: height * 0.02,
                      right: width * 0.03,
                      child:
                          MenuButton(isTapped: !isTapped!, width: width * 0.34),
                    ),
                    */
                  ],
                )
              : Padding(
                  padding: EdgeInsets.only(top: height * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomAppheader(width: width),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      SiteNameAndLocation(
                        fontSize2: 13.0,
                        fontSize: 17.0,
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.siteDetails,
                          );
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              Common.assetImages + "Ellipse 49.png",
                              width: width * 0.7,
                            ),
                            SizedBox(
                              width: width * 0.4,
                              child: Text(
                                "Request Fuel",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 34.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.siteScreen);
                          },
                          child: SiteContainer(
                              width: width, text: "Sites", height: height)),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.crudscreen);
                        },
                        child: SiteContainer(
                            width: width,
                            text: "Edit Employees",
                            height: height),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

class SiteNameAndLocation extends StatelessWidget {
  const SiteNameAndLocation({
    Key? key,
    required this.fontSize,
    required this.fontSize2,
  }) : super(key: key);

  final double fontSize;
  final double fontSize2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            AuthFunctions.signOut();
            Navigator.pushNamed(context, AppRoutes.loginscreen);
          },
          child: Text(
            "Acres Marathon",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
        ),
        Text(
          "Tampa, FL",
          style: TextStyle(
              color: Color(0xFF6E7191),
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins"),
        ),
      ],
    );
  }
}

class SiteContainer extends StatelessWidget {
  const SiteContainer({
    Key? key,
    required this.width,
    required this.text,
    required this.height,
  }) : super(key: key);

  final double width;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context) ? width * 0.2 : width * 0.72,
      height: height * 0.062,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(Responsive.isDesktop(context) ? 14.0 : 16.0),
        color: Color(0xFF5081DB),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
