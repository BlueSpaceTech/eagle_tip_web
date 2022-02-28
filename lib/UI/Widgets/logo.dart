import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: SvgPicture.asset(
        "assets/Logo 2 1.svg",
        width: Responsive.isDesktop(context) ? 200 : width * 0.42,
      ),
    );
  }
}

class LogoSplash extends StatelessWidget {
  const LogoSplash({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.2),
      child: SvgPicture.asset(
        "assets/Logo 2 1.svg",
        width: width * 0.42,
      ),
    );
  }
}
