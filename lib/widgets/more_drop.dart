import 'package:flutter/material.dart';
import 'package:flutter_ls/nevigapages/more_beverage.dart';
import 'package:flutter_ls/nevigapages/more_diwali.dart';
import 'package:flutter_ls/nevigapages/more_dry_f.dart';
import 'package:flutter_ls/nevigapages/more_vegitable.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class more_drop extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Row(
        children: [
          WindowStyleDropdownMenu(
              dropdownBackgroundColor: Colors.white,
              buttonTitleStyle: TextStyle(color: Colors.black),
              buttonTitle: 'More',
              dropdownItems: [
                ListTile(
                  title: Text(
                    'Vegitable',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => more_vegitable_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Dry Fruits',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder:(context) => more_dry_f_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Diwali Special',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder:(context) => more_diwali_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Beverages',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => more_beverage_page(),));
                  },
                ),
              ])
        ],
      ),
    );
  }
}
