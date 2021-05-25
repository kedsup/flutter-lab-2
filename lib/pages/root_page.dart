import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab2/pages/home_page.dart';
import 'package:lab2/theme/colors.dart';

class RootPage extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: black,
      body: HomePage(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: appBarColor,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              "public/images/camera_icon.svg",
              width: 30,
            ),
            Text(
              "Instagram",
              style: TextStyle(fontSize: 25),
            ),
            SvgPicture.asset(
              "public/images/message_icon.svg",
              width: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget getBottomNavigationBar() {
    List bottomItems = [
      "public/images/home_active_icon.svg",
      "public/images/search_icon.svg",
      "public/images/upload_icon.svg",
      "public/images/love_icon.svg",
      "public/images/account_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(color: appFooterColor),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return SvgPicture.asset(
              bottomItems[index],
              width: 25,
            );
          }),
        ),
      ),
    );
  }
}
