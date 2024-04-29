

import 'package:flutter/material.dart';
import 'package:flutter_ls/nevigapages/fruit_apple_page.dart';
import 'package:flutter_ls/nevigapages/fruit_mango_page.dart';
import 'package:flutter_ls/nevigapages/fruits_all_page.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class fruits_drop extends StatefulWidget {
  @override
  State<fruits_drop> createState() => _fruits_dropState();
}

class _fruits_dropState extends State<fruits_drop> {
   bool hovering = false;
  Widget build(BuildContext context) {
    return
// window style dropdown

        Container(
      width: 70,
      child: Row(
        children: [
          MouseRegion(
            onEnter: (details) => setState(() {
              hovering = true;
            }),

            onExit: (details) => setState(() {
              hovering = false;
            }),
            child: WindowStyleDropdownMenu(
                dropdownBackgroundColor: Colors.white,
              
                buttonTitleStyle: TextStyle(color: hovering? Colors.red : Colors.black,shadows: null ),
                buttonTitle: 'Fruits',
              
                dropdownItems: [
                  ListTile(
                    title: Text(
                      'All',
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fruit_all_page(),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Apples',
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fruit_apple_page(),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text('Mangoes'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fruit_mango_page(),
                          ));
                    },
                  )
                ]),
          )
        ],
      ),
    );
  }
}
