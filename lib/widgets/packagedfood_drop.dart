import 'package:flutter/material.dart';
import 'package:flutter_ls/nevigapages/packaged_f_all.dart';
import 'package:flutter_ls/nevigapages/packaged_f_dairy.dart';
import 'package:flutter_ls/nevigapages/packaged_f_noodle.dart';
import 'package:flutter_ls/nevigapages/packaged_f_sauce.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class packagedfood extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Row(
        children: [
          WindowStyleDropdownMenu(
              dropdownBackgroundColor: Colors.white,
              buttonTitleStyle: TextStyle(color: Colors.black),
              buttonTitle: 'Packaged Food',
              dropdownItems: [
                ListTile(
                  title: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => packaged_f_all_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Sauces and Spreads',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder:(context) => packaged_f_sauces_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Noodles',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                                         Navigator.push(context, MaterialPageRoute(builder:(context) => packaged_f_noodle_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Dairy Products',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder:(context) => packaged_f_dairy_page(),));
                  },
                ),
              ])
        ],
      ),
    );
  }
}
