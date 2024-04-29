import 'package:flutter/material.dart';
import 'package:flutter_ls/nevigapages/person_c_all.dart';
import 'package:flutter_ls/nevigapages/personal_c_facewa.dart';
import 'package:flutter_ls/nevigapages/personal_c_hair.dart';
import 'package:flutter_ls/nevigapages/personal_c_soaps.dart';
import 'package:flutter_ls/nevigapages/personal_c_tooth.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class personalcare extends StatefulWidget {
  @override
  State<personalcare> createState() => _personalcareState();
}

class _personalcareState extends State<personalcare> {
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Row(
        children: [
          WindowStyleDropdownMenu(
              dropdownBackgroundColor: Colors.white,
              buttonTitleStyle: TextStyle(color: Colors.black),
              buttonTitle: 'Personal Care ',
              dropdownItems: [
                ListTile(
                  title: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => personal_c_all_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Soaps & Handwashes',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder:(context) => personal_c_soaps_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Hair Care',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => personal_c_hair_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Facewash',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => personal_c_facewas_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Tooth Paste',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder:(context) => personal_c_tooth_page(),));
                  },
                ),
              ])
        ],
      ),
    );
  }
}
