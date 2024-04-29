import 'package:flutter/material.dart';
import 'package:flutter_ls/nevigapages/baby_care_all.dart';
import 'package:flutter_ls/nevigapages/baby_care_himalaya.dart';
import 'package:flutter_ls/nevigapages/baby_care_johnson.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class babycare_drop extends StatefulWidget {
  @override
  State<babycare_drop> createState() => _babycare_dropState();
}

class _babycare_dropState extends State<babycare_drop> {
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Row(
        children: [
          WindowStyleDropdownMenu(
              dropdownBackgroundColor: Colors.white,
              buttonTitle: 'Baby Care',
              buttonTitleStyle: TextStyle(color: Colors.black,backgroundColor: Colors.transparent),
              dropdownItems: [
                ListTile(
                  title: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => baby_care_all_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Himalaya Products',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder:(context) => baby_care_himalaya_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    "Johnson's baby",
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder:(context) => baby_care_johnson_page(),));
                  },
                )
              ])
        ],
      ),
    );
  }
}
