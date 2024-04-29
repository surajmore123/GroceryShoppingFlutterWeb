import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ls/nevigapages/houshold_all.dart';
import 'package:flutter_ls/nevigapages/houshold_detergent.dart';
import 'package:flutter_ls/nevigapages/houshold_toilet.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class household extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: Row(
        children: [
          WindowStyleDropdownMenu(
              dropdownBackgroundColor: Colors.white,
              buttonTitleStyle: TextStyle(color: Colors.black),
              buttonTitle: 'Household & Pets',
              dropdownItems: [
                ListTile(
                  title: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => household_all_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Detergents',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => household_detergent_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Dishwashing Supplies',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder:(context) => household_detergent_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Toilet & Floor Cleaner',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder:(context) => household_toilet_page(),));
                  },
                ),
              ])
        ],
      ),
    );
  }
}
