import 'package:eagle_tip/Routes/approutes.dart';
import 'package:flutter/material.dart';

class CustomFAQbottom extends StatelessWidget {
  const CustomFAQbottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.07,
      decoration: BoxDecoration(
        color: Color(0xff1A1F23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(children: [
            Image.asset("assets/Question.png"),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.faq);
              },
              child: Text(
                "FAQ",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Image.asset("assets/Phone.png"),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.support);
                },
                child: Text(
                  "Support",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
