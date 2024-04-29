import 'package:flutter/material.dart';
import 'package:flutter_ls/nevigapages/cooking_e_atta.dart';
import 'package:flutter_ls/nevigapages/cooking_e_grains.dart';
import 'package:flutter_ls/nevigapages/cooking_e_oil.dart';
import 'package:flutter_ls/nevigapages/cooking_e_salt.dart';
import 'package:flutter_ls/nevigapages/cookung_e_all.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class cooking_essen_drop extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Row(
        children: [
          WindowStyleDropdownMenu(
              dropdownBackgroundColor: Colors.white,
              buttonTitleStyle: TextStyle(color: Colors.black),
              buttonTitle: 'Cooking Essentails',
              dropdownItems: [
                ListTile(
                  title: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => cooking_e_all_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Salt, Spices & Mas',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder:(context) => cooking_e_salt_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'oil & Ghee',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => cooking_e_oil_page(),));
                  },
                ),
                ListTile(
                  title: Text(
                    'Atta & Flours',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => cooking_e_atta_page(),));
                  },
                ),
                ListTile(
                  title: const Text(
                    'Graines & cereals',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder:(context) => cooking_e_grains_page(),));
                  },
                )
              ])
        ],
      ),
    );
  }
}
