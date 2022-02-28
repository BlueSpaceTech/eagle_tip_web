// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/custom_webbg.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  bool? switchVal1 = false;

  bool? switchVal2 = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Responsive.isDesktop(context)
          ? MenuButton(isTapped: false, width: width)
          : SizedBox(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: backGround_color,
            height: Responsive.isDesktop(context) ? height * 1.16 : height,
            child: Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isDesktop(context)
                      ? width * 0.0
                      : width * 0.07,
                  right: Responsive.isDesktop(context) ? 0.0 : width * 0.08,
                  top: height * 0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Responsive.isDesktop(context)
                      ? Navbar(
                          width: width,
                          height: height,
                          text1: "Home",
                          text2: "Sites",
                         )
                      : Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.17,
                            ),
                            Logo(width: width),
                          ],
                        ),
                  Stack(
                    children: [
                      Visibility(
                        visible: Responsive.isDesktop(context),
                        child: WebBg(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: Responsive.isDesktop(context)
                                ? height * 0.06
                                : 0.0,
                            left: Responsive.isDesktop(context)
                                ? width * 0.08
                                : 0.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? CrossAxisAlignment.start
                                            : CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: height * 0.06,
                                      ),
                                      Text(
                                        "Change profile picture",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins"),
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      Container(
                                        alignment: Alignment.bottomRight,
                                        width: Responsive.isDesktop(context)
                                            ? width * 0.1
                                            : width * 0.38,
                                        height: height * 0.18,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage("assets/Image.png"),
                                          ),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: Responsive.isDesktop(context)
                                                  ? height * 0.13
                                                  : 0.0,
                                              left:
                                                  Responsive.isDesktop(context)
                                                      ? width * 0.05
                                                      : 0.0),
                                          child: Image.asset(
                                            "assets/editImg.png",
                                            width: width * 0.12,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.04,
                                      ),
                                      Text(
                                        "Change password",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins"),
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      ChangePassField(
                                          labelText: "Current Password"),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      ChangePassField(
                                          labelText: "New Password"),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      ChangePassField(
                                          labelText: "Re-enter New Password"),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context, false);
                                        },
                                        child: Container(
                                          width: Responsive.isDesktop(context)
                                              ? width * 0.23
                                              : width * 0.9,
                                          height: height * 0.07,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            color: Color(0xFF5081DB),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Done",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Poppins"),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: Responsive.isDesktop(context),
                                  child: Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Settings",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Poppins"),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          width: width * 0.3,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Push Notifications",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins"),
                                              ),
                                              FlutterSwitch(
                                                  height: 30,
                                                  width: 60,
                                                  padding: 2.0,
                                                  toggleSize: 27,
                                                  activeColor:
                                                      Color(0xFF5081db),
                                                  inactiveColor:
                                                      Color(0xFFd9dbe9),
                                                  value: switchVal1!,
                                                  onToggle: (val) {
                                                    setState(() {
                                                      switchVal1 = val;
                                                    });
                                                  })
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          width: width * 0.3,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "In-App Notifications",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins"),
                                              ),
                                              FlutterSwitch(
                                                  height: 30,
                                                  width: 60,
                                                  padding: 2.0,
                                                  toggleSize: 27,
                                                  activeColor:
                                                      Color(0xFF5081db),
                                                  inactiveColor:
                                                      Color(0xFFd9dbe9),
                                                  value: switchVal2!,
                                                  onToggle: (val) {
                                                    setState(() {
                                                      switchVal2 = val;
                                                    });
                                                  })
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.17,
                                        ),
                                        Text(
                                          "Site",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Poppins"),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.072,
                                          width: width * 0.3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.02,
                                                right: width * 0.02),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Acres Marathon",
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins"),
                                                ),
                                                Image.asset(
                                                  Common.assetImages +
                                                      "down_black.png",
                                                  width: width * 0.02,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.04,
                                        ),
                                        Text(
                                          "Log out",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Color(0xFF92b8ff),
                                              decoration:
                                                  TextDecoration.underline,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Poppins"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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

class ChangePassField extends StatelessWidget {
  const ChangePassField({Key? key, required this.labelText}) : super(key: key);
  final String labelText;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(
          left: Responsive.isDesktop(context) ? width * 0.02 : width * 0.06,
          right: Responsive.isDesktop(context) ? width * 0.02 : width * 0.06),
      height: Responsive.isDesktop(context) ? height * 0.063 : height * 0.08,
      width: Responsive.isDesktop(context) ? width * 0.23 : width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Responsive.isDesktop(context) ? width * 0.1 : width * 0.67,
            child: TextFormField(
              textAlign: TextAlign.left,
              style: TextStyle(fontFamily: "Poppins"),
              cursorColor: Colors.black12,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: labelText,
                labelStyle: TextStyle(
                    fontSize: Responsive.isDesktop(context)
                        ? width * 0.009
                        : width * 0.027,
                    color: Color(0xff5e8be0),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Image.asset(
            Common.assetImages + "view.png",
            width: Responsive.isDesktop(context) ? width * 0.02 : width * 0.05,
          ),
        ],
      ),
    );
  }
}
