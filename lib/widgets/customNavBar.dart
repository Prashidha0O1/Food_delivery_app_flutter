import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../screens/homeScreen.dart';
import '../screens/menuScreen.dart';
import '../screens/moreScreen.dart';
import '../screens/offerScreen.dart';
import '../screens/profileScreen.dart';
import '../utils/helper.dart';

class CustomNavBar extends StatelessWidget {
  final bool home;
  final bool menu;
  final bool offer;
  final bool profile;
  final bool more;

  const CustomNavBar({
    Key? key,
    this.home = false,
    this.menu = false,
    this.offer = false,
    this.profile = false,
    this.more = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                if (!menu) {
                  Navigator.of(context)
                      .pushReplacementNamed(MenuScreen.routeName);
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menu
                      ? Image.asset(
                          Helper.getAssetName("more_filled.png", "virtual"),
                        )
                      : Image.asset(
                          Helper.getAssetName("more.png", "virtual"),
                        ),
                  menu
                      ? Text(
                          "Menu",
                          style: TextStyle(color: AppColor.orange),
                        )
                      : Text("Menu"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if (!offer) {
                  Navigator.of(context)
                      .pushReplacementNamed(OfferScreen.routeName);
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  offer
                      ? Image.asset(
                          Helper.getAssetName("bag_filled.png", "virtual"),
                        )
                      : Image.asset(
                          Helper.getAssetName("bag.png", "virtual"),
                        ),
                  offer
                      ? Text(
                          "Offers",
                          style: TextStyle(color: AppColor.orange),
                        )
                      : Text("Offers"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if (!profile) {
                  Navigator.of(context)
                      .pushReplacementNamed(ProfileScreen.routeName);
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profile
                      ? Image.asset(
                          Helper.getAssetName("user_filled.png", "virtual"),
                        )
                      : Image.asset(
                          Helper.getAssetName("user.png", "virtual"),
                        ),
                  profile
                      ? Text(
                          "Profile",
                          style: TextStyle(color: AppColor.orange),
                        )
                      : Text("Profile"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if (!more) {
                  Navigator.of(context)
                      .pushReplacementNamed(MoreScreen.routeName);
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  more
                      ? Image.asset(
                          Helper.getAssetName("menu_filled.png", "virtual"),
                        )
                      : Image.asset(
                          Helper.getAssetName("menu.png", "virtual"),
                        ),
                  more
                      ? Text(
                          "More",
                          style: TextStyle(color: AppColor.orange),
                        )
                      : Text("More"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
