// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_ls/HoverAll/onHover.dart';
// import 'package:flutter_ls/HoverAll/onHover2.dart';
// import 'package:flutter_ls/main.dart';
// import 'package:flutter_ls/nevigapages/baby_care_all.dart';
// import 'package:flutter_ls/nevigapages/baby_care_himalaya.dart';
// import 'package:flutter_ls/nevigapages/baby_care_johnson.dart';
// import 'package:flutter_ls/nevigapages/cooking_e_atta.dart';
// import 'package:flutter_ls/nevigapages/cooking_e_grains.dart';
// import 'package:flutter_ls/nevigapages/cooking_e_oil.dart';
// import 'package:flutter_ls/nevigapages/cooking_e_salt.dart';
// import 'package:flutter_ls/nevigapages/cookung_e_all.dart';
// import 'package:flutter_ls/nevigapages/fruit_apple_page.dart';
// import 'package:flutter_ls/nevigapages/fruits_all_page.dart';
// import 'package:flutter_ls/nevigapages/houshold_all.dart';
// import 'package:flutter_ls/nevigapages/houshold_detergent.dart';
// import 'package:flutter_ls/nevigapages/houshold_dishwash.dart';
// import 'package:flutter_ls/nevigapages/houshold_toilet.dart';
// import 'package:flutter_ls/nevigapages/more_beverage.dart';
// import 'package:flutter_ls/nevigapages/more_diwali.dart';
// import 'package:flutter_ls/nevigapages/more_dry_f.dart';
// import 'package:flutter_ls/nevigapages/more_vegitable.dart';
// import 'package:flutter_ls/nevigapages/packaged_f_all.dart';
// import 'package:flutter_ls/nevigapages/packaged_f_dairy.dart';
// import 'package:flutter_ls/nevigapages/packaged_f_noodle.dart';
// import 'package:flutter_ls/nevigapages/packaged_f_sauce.dart';
// import 'package:flutter_ls/nevigapages/person_c_all.dart';
// import 'package:flutter_ls/nevigapages/personal_c_facewa.dart';
// import 'package:flutter_ls/nevigapages/personal_c_hair.dart';
// import 'package:flutter_ls/nevigapages/personal_c_soaps.dart';
// import 'package:flutter_ls/nevigapages/personal_c_tooth.dart';

// void main() => runApp(const MenuAcceleratorApp());

// class MyMenuBar extends StatefulWidget {
//   const MyMenuBar({super.key});

//   @override
//   State<MyMenuBar> createState() => _MyMenuBarState();
// }

// class _MyMenuBarState extends State<MyMenuBar> {
//   @override
//   Widget build(BuildContext context) {
//     bool isPressed = false;
//     var color = Colors.transparent;
//     final BorderSide primarySide2 = BorderSide(width: 0.20, color: Colors.grey);
//     return

//              MenuBar(

//                   style: const MenuStyle(

//                       backgroundColor: MaterialStatePropertyAll<Color>(
//                           Color.fromRGBO(255, 255, 255, 1))),
//                   children: <Widget>[
//                     const SizedBox(width: 100),
//                     onHover1(builder: (isHovered1, isClicked) {
//                       return InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => MyHomePage(),
//                                 ));
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               "Home",
//                               style: TextStyle(
//                                   color: isHovered1 ? Colors.red : Colors.black),
//                             ),
//                           ));
//                     }),
//                     SizedBox(width: 80),
//                     SubmenuButton(
//                       style: SubmenuButton.styleFrom(
//                           splashFactory: NoSplash.splashFactory,
//                           disabledBackgroundColor: null),
//                       menuChildren: <Widget>[
//                         Container(
//                           width: 250,
//                           color: Colors.white,
//                           child: MenuItemButton(
//                             style: MenuItemButton.styleFrom(
//                                 shape: LinearBorder.bottom(
//                                     size: 1, side: primarySide2)),
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => fruit_all_page(),
//                                   ));
//                             },
//                             child: onHover(builder: (isHovered) {
//                               return Text(
//                                 "All",
//                                 style: TextStyle(
//                                     color: isHovered ? Colors.red : Colors.black),
//                               );
//                             }),
//                           ),
//                         ),
//                         Container(
//                           width: 250,
//                           color: Colors.white,
//                           child: MenuItemButton(
//                             style: MenuItemButton.styleFrom(
//                                 shape: LinearBorder.bottom(
//                                     size: 1, side: primarySide2)),
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => fruit_apple_page(),
//                                   ));
//                             },
//                             //  child: const MenuAcceleratorLabel('All'),
//                             child: onHover(builder: (isHovered) {
//                               return Text(
//                                 "Apple",
//                                 style: TextStyle(
//                                     color: isHovered ? Colors.red : Colors.black),
//                               );
//                             }),
//                           ),
//                         ),
//                         Container(
//                           width: 250,
//                           color: Colors.white,
//                           child: MenuItemButton(
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => fruit_all_page(),
//                                   ));
//                             },
//                             //  child: const MenuAcceleratorLabel('All'),
//                             child: onHover(builder: (isHovered) {
//                               return Text(
//                                 "Mangoes",
//                                 style: TextStyle(
//                                     color: isHovered ? Colors.red : Colors.black),
//                               );
//                             }),
//                           ),
//                         ),
//                       ],
//                       child:
//                        onHover1(builder: (isHovered1, isClicked) {
//                         return Container(
//                             child: Row(
//                           children: [
//                             Text(
//                               "Fruits",
//                               style: TextStyle(
//                                   color: isHovered1 ? Colors.red : Colors.black,
//                                   fontWeight: FontWeight.normal),
//                             ),

//                                Transform.rotate(
//                                 angle: isClicked ? 3.14 / 2 : 0,
//                                 child: Icon(
//                                   Icons.chevron_right,
//                                   size: 19,
//                                   color: isClicked ? Colors.red : Colors.black,
//                                 ),
//                                )

//                             // Icon(
//                             //   isHovered1
//                             //       ? Icons.keyboard_arrow_down
//                             //       : Icons.chevron_right,
//                             //   size: 19,
//                             //   color: isHovered1 ? Colors.red : Colors.black,
//                             // ),
//                           ],
//                         )
//                         );
//                       }
//                       ),
//                     ),
//                     SizedBox(width: 80),
//                     Theme(
//                       data: Theme.of(context).copyWith(
//                           highlightColor: color,
//                           splashColor: color,
//                           hoverColor: color),
//                       child: SubmenuButton(
//                         menuChildren: <Widget>[
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => baby_care_all_page(),
//                                     ));
//                               },
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "All",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           baby_care_himalaya_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Himalaya-Products",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           baby_care_johnson_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Johnsons-Baby",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                         ],
//                         child: onHover1(builder: (isHovered1, isClicked) {
//                           return Container(
//                               child: Row(
//                             children: [
//                               Text(
//                                 "Baby Care",
//                                 style: TextStyle(
//                                     color: isHovered1 ? Colors.red : Colors.black,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                                    Transform.rotate(
//                                 angle: isClicked ? 3.14 / 2 : 0,
//                                 child: Icon(
//                                   Icons.chevron_right,
//                                   size: 19,
//                                   color: isClicked ? Colors.red : Colors.black,
//                                 ),
//                                )
//                             ],
//                           ));
//                         }),
//                       ),
//                     ),
//                     SizedBox(width: 80),
//                     Theme(
//                       data: ThemeData(
//                           splashColor: Colors.transparent,
//                           highlightColor: Colors.transparent),
//                       child: SubmenuButton(
//                         //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
//                         //       focusNode: null,
//                         //  menuStyle: ,
//                         menuChildren: <Widget>[
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => cooking_e_all_page(),
//                                     ));
//                               },
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "All",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => cooking_e_salt_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Salt-Spices-And-Masala",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => cooking_e_oil_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Oil-Ghee",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => cooking_e_atta_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Atta-And-Flours",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           cooking_e_grains_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Grains-Cereals-And-Pulses",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                         ],
//                         child: onHover1(builder: (isHovered1, isClicked) {
//                           return Container(
//                               child: Row(
//                             children: [
//                               Text(
//                                 "Cooking-Essentials",
//                                 style: TextStyle(
//                                     color: isHovered1 ? Colors.red : Colors.black,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                                Transform.rotate(
//                                 angle: isClicked ? 3.14 / 2 : 0,
//                                 child: Icon(
//                                   Icons.chevron_right,
//                                   size: 19,
//                                   color: isClicked ? Colors.red : Colors.black,
//                                 ),
//                                )
//                             ],
//                           ));
//                         }),
//                       ),
//                     ),
//                     SizedBox(width: 80),
//                     Theme(
//                       data: ThemeData(
//                           splashColor: Colors.transparent,
//                           highlightColor: Colors.transparent),
//                       child: SubmenuButton(
//                         //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
//                         //       focusNode: null,
//                         //  menuStyle: ,
//                         menuChildren: <Widget>[
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => personal_c_all_page(),
//                                     ));
//                               },
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "All",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           personal_c_soaps_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Soaps-Handwashes",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           personal_c_hair_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Hair-Care",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           personal_c_facewas_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Facewash",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           personal_c_tooth_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Tooth-Paste",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                         ],
//                         child: onHover1(builder: (isHovered1, isClicked) {
//                           return Container(
//                               child: Row(
//                             children: [
//                               Text(
//                                 "Personal Care",
//                                 style: TextStyle(
//                                     color: isHovered1 ? Colors.red : Colors.black,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                                Transform.rotate(
//                                 angle: isClicked ? 3.14 / 2 : 0,
//                                 child: Icon(
//                                   Icons.chevron_right,
//                                   size: 19,
//                                   color: isClicked ? Colors.red : Colors.black,
//                                 ),
//                                )
//                             ],
//                           ));
//                         }),
//                       ),
//                     ),
//                     SizedBox(width: 80),
//                     Theme(
//                       data: ThemeData(
//                           splashColor: Colors.transparent,
//                           highlightColor: Colors.transparent),
//                       child: SubmenuButton(
//                         //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
//                         //       focusNode: null,
//                         //  menuStyle: ,
//                         menuChildren: <Widget>[
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => household_all_page(),
//                                     ));
//                               },
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "All",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           household_detergent_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Detergent",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           household_dishwash_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Dishwashing-Supplies",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           household_toilet_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Toilet-And-Floor-Cleaners",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                         ],
//                         child: onHover1(builder: (isHovered1, isClicked) {
//                           return Container(
//                               child: Row(
//                             children: [
//                               Text(
//                                 "Household & Pets ",
//                                 style: TextStyle(
//                                     color: isHovered1 ? Colors.red : Colors.black,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                                 Transform.rotate(
//                                 angle: isClicked ? 3.14 / 2 : 0,
//                                 child: Icon(
//                                   Icons.chevron_right,
//                                   size: 19,
//                                   color: isClicked ? Colors.red : Colors.black,
//                                 ),
//                                ),
//                             ],
//                           ));
//                         }),
//                       ),
//                     ),
//                     SizedBox(width: 80),
//                     Theme(
//                       data: ThemeData(
//                           splashColor: Colors.transparent,
//                           highlightColor: Colors.transparent),
//                       child: SubmenuButton(
//                         //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
//                         //       focusNode: null,
//                         //  menuStyle: ,
//                         menuChildren: <Widget>[
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => packaged_f_all_page(),
//                                     ));
//                               },
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "All",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           packaged_f_sauces_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Sauces-And-Spreads",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           packaged_f_noodle_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Noodles",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           packaged_f_dairy_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Dairy-Products",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                         ],
//                         child: onHover1(builder: (isHovered1, isClicked) {
//                           return Container(
//                               child: Row(
//                             children: [
//                               Text(
//                                 "Packaged Foods ",
//                                 style: TextStyle(
//                                     color: isHovered1 ? Colors.red : Colors.black,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                                   Transform.rotate(
//                                 angle: isClicked ? 3.14 / 2 : 0,
//                                 child: Icon(
//                                   Icons.chevron_right,
//                                   size: 19,
//                                   color: isClicked ? Colors.red : Colors.black,
//                                 ),
//                                )
//                             ],
//                           ));
//                         }),
//                       ),
//                     ),
//                     SizedBox(width: 70),
//                     Theme(
//                       data: ThemeData(
//                           splashColor: Colors.transparent,
//                           highlightColor: Colors.transparent),
//                       child: SubmenuButton(
//                         menuChildren: <Widget>[
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => more_vegitable_page(),
//                                     ));
//                               },
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Vegetable",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => more_dry_f_page(),
//                                     ));
//                               },
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Dry-Fruits",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => more_diwali_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Diwali Special",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                           Container(
//                             width: 250,
//                             color: Colors.white,
//                             child: MenuItemButton(
//                               style: MenuItemButton.styleFrom(
//                                   shape: LinearBorder.bottom(
//                                       size: 1, side: primarySide2)),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => more_beverage_page(),
//                                     ));
//                               },
//                               //  child: const MenuAcceleratorLabel('All'),
//                               child: onHover(builder: (isHovered) {
//                                 return Text(
//                                   "Beverages",
//                                   style: TextStyle(
//                                       color:
//                                           isHovered ? Colors.red : Colors.black),
//                                 );
//                               }),
//                             ),
//                           ),
//                         ],
//                         child: onHover1(builder: (isHovered1, isClicked) {
//                           return Container(
//                               child: Row(
//                             children: [
//                               Text(
//                                 "More ",
//                                 style: TextStyle(
//                                     color: isHovered1 ? Colors.red : Colors.black,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                                 Transform.rotate(
//                                 angle: isClicked ? 3.14 / 2 : 0,
//                                 child: Icon(
//                                   Icons.chevron_right,
//                                   size: 19,
//                                   color: isClicked ? Colors.red : Colors.black,
//                                 ),
//                                )
//                             ],
//                           ));
//                         }),
//                       ),
//                     ),
//                     SizedBox(width: 100),
//                   ],
//                 );

//   }
// }

// class MenuAcceleratorApp extends StatelessWidget {
//   const MenuAcceleratorApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         splashColor: Colors.amber,
//         hoverColor: Colors.black,
//       ),
//       home: Shortcuts(
//         shortcuts: <ShortcutActivator, Intent>{
//           const SingleActivator(LogicalKeyboardKey.keyT, control: true):
//               VoidCallbackIntent(() {
//             debugDumpApp();
//           }),
//         },
//         child: const Scaffold(body: SafeArea(child: MyMenuBar())),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ls/HoverAll/onHover.dart';
import 'package:flutter_ls/HoverAll/onHover2.dart';
import 'package:flutter_ls/nevigapages/baby_care_all.dart';
import 'package:flutter_ls/nevigapages/baby_care_himalaya.dart';
import 'package:flutter_ls/nevigapages/baby_care_johnson.dart';
import 'package:flutter_ls/nevigapages/cooking_e_atta.dart';
import 'package:flutter_ls/nevigapages/cooking_e_grains.dart';
import 'package:flutter_ls/nevigapages/cooking_e_oil.dart';
import 'package:flutter_ls/nevigapages/cooking_e_salt.dart';
import 'package:flutter_ls/nevigapages/cookung_e_all.dart';
import 'package:flutter_ls/nevigapages/fruit_apple_page.dart';
import 'package:flutter_ls/nevigapages/fruits_all_page.dart';
import 'package:flutter_ls/nevigapages/houshold_all.dart';
import 'package:flutter_ls/nevigapages/houshold_detergent.dart';
import 'package:flutter_ls/nevigapages/houshold_dishwash.dart';
import 'package:flutter_ls/nevigapages/houshold_toilet.dart';
import 'package:flutter_ls/nevigapages/more_beverage.dart';
import 'package:flutter_ls/nevigapages/more_diwali.dart';
import 'package:flutter_ls/nevigapages/more_dry_f.dart';
import 'package:flutter_ls/nevigapages/more_vegitable.dart';
import 'package:flutter_ls/nevigapages/packaged_f_all.dart';
import 'package:flutter_ls/nevigapages/packaged_f_dairy.dart';
import 'package:flutter_ls/nevigapages/packaged_f_noodle.dart';
import 'package:flutter_ls/nevigapages/packaged_f_sauce.dart';
import 'package:flutter_ls/nevigapages/person_c_all.dart';
import 'package:flutter_ls/nevigapages/personal_c_facewa.dart';
import 'package:flutter_ls/nevigapages/personal_c_hair.dart';
import 'package:flutter_ls/nevigapages/personal_c_soaps.dart';
import 'package:flutter_ls/nevigapages/personal_c_tooth.dart';
import 'package:flutter_ls/widgets/home.dart';

void main() => runApp(const MenuAcceleratorApp());

class MyMenuBar extends StatefulWidget {
  const MyMenuBar({super.key});

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();
}

class _MyMenuBarState extends State<MyMenuBar> {
  @override
  Widget build(BuildContext context) {
    final BorderSide primarySide2 = BorderSide(width: 0.20, color: Colors.grey);
    return
    Container(
      width: double.infinity,
      color: Colors.white,
      child: 
 MenuBar(
            children: <Widget>[
              const SizedBox(width: 100),
              onHover1(builder: (isHovered1, isClicked) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                        //    builder: (context) => MyHomePage(),
                        builder: (context) => home(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: isHovered1 ? Colors.red : Colors.black),
                      ),
                    ));
              }),
              SizedBox(width: 40),
              SubmenuButton(
                //    style: SubmenuButton.styleFrom(maximumSize: ) ,
                //
                menuChildren: <Widget>[
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => fruit_all_page(),
                            ));
                      },
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "All",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => fruit_apple_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Apple",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => fruit_all_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Mangoes",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                ],
                child: onHover1(builder: (isHovered1, isClicked) {
                  return Container(
                      child: Row(
                    children: [
                      Text(
                        "Fruits",
                        style: TextStyle(
                            color: isHovered1 ? Colors.red : Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Transform.rotate(
                        angle: isClicked ? 3.14 / 2 : 0,
                        child: Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: isHovered1 || isClicked
                              ? Colors.red
                              : Colors.black,
                        ),
                      )
                    ],
                  ));
                }),
              ),
                SizedBox(width: 40),
              onHover1(builder: (isHovered1, isClicked) {
                return SubmenuButton(
                  menuChildren: <Widget>[
                    Container(
                      width: 250,
                      color: Colors.white,
                      child: MenuItemButton(
                        style: MenuItemButton.styleFrom(
                            shape: LinearBorder.bottom(
                                size: 1, side: primarySide2)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => baby_care_all_page(),
                              ));
                        },
                        child: onHover(builder: (isHovered) {
                          return Text(
                            "All",
                            style: TextStyle(
                                color: isHovered ? Colors.red : Colors.black),
                          );
                        }),
                      ),
                    ),
                    Container(
                      width: 250,
                      color: Colors.white,
                      child: MenuItemButton(
                        style: MenuItemButton.styleFrom(
                            shape: LinearBorder.bottom(
                                size: 1, side: primarySide2)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => baby_care_himalaya_page(),
                              ));
                        },
                        //  child: const MenuAcceleratorLabel('All'),
                        child: onHover(builder: (isHovered) {
                          return Text(
                            "Himalaya-Products",
                            style: TextStyle(
                                color: isHovered ? Colors.red : Colors.black),
                          );
                        }),
                      ),
                    ),
                    Container(
                      width: 250,
                      color: Colors.white,
                      child: MenuItemButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => baby_care_johnson_page(),
                              ));
                        },
                        //  child: const MenuAcceleratorLabel('All'),
                        child: onHover(builder: (isHovered) {
                          return Text(
                            "Johnsons-Baby",
                            style: TextStyle(
                                color: isHovered ? Colors.red : Colors.black),
                          );
                        }),
                      ),
                    ),
                  ],
                  child: onHover1(builder: (isHovered1, isClicked) {
                    return Container(
                        child: Row(
                      children: [
                        Text(
                          "Baby Care",
                          style: TextStyle(
                              color: isHovered1 ? Colors.red : Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                        Transform.rotate(
                          angle: isClicked ? 3.14 / 2 : 0,
                          child: Icon(
                            Icons.chevron_right,
                            size: 19,
                            color: isHovered1 || isClicked
                                ? Colors.red
                                : Colors.black,
                          ),
                        )
                      ],
                    ));
                  }),
                );
              }),
              SizedBox(width: 40),
              SubmenuButton(
                //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
                //       focusNode: null,
                //  menuStyle: ,
                menuChildren: <Widget>[
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => cooking_e_all_page(),
                            ));
                      },
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "All",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => cooking_e_salt_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Salt-Spices-And-Masala",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => cooking_e_oil_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Oil-Ghee",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => cooking_e_atta_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Atta-And-Flours",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => cooking_e_grains_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Grains-Cereals-And-Pulses",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                ],
                child: onHover1(builder: (isHovered1, isClicked) {
                  return Container(
                      child: Row(
                    children: [
                      Text(
                        "Cooking-Essentials",
                        style: TextStyle(
                            color: isHovered1 ? Colors.red : Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Transform.rotate(
                        angle: isClicked ? 3.14 / 2 : 0,
                        child: Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: isHovered1 || isClicked
                              ? Colors.red
                              : Colors.black,
                        ),
                      )
                    ],
                  ));
                }),
              ),
                  SizedBox(width: 40),
              SubmenuButton(
                //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
                //       focusNode: null,
                //  menuStyle: ,
                menuChildren: <Widget>[
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => personal_c_all_page(),
                            ));
                      },
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "All",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => personal_c_soaps_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Soaps-Handwashes",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => personal_c_hair_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Hair-Care",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => personal_c_facewas_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Facewash",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => personal_c_tooth_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Tooth-Paste",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                ],
                child: onHover1(builder: (isHovered1, isClicked) {
                  return Container(
                      child: Row(
                    children: [
                      Text(
                        "Personal Care",
                        style: TextStyle(
                            color: isHovered1 ? Colors.red : Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Transform.rotate(
                        angle: isClicked ? 3.14 / 2 : 0,
                        child: Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: isHovered1 || isClicked
                              ? Colors.red
                              : Colors.black,
                        ),
                      )
                    ],
                  ));
                }),
              ),
                SizedBox(width: 40),
              SubmenuButton(
                //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
                //       focusNode: null,
                //  menuStyle: ,
                menuChildren: <Widget>[
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => household_all_page(),
                            ));
                      },
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "All",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => household_detergent_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Detergent",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => household_dishwash_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Dishwashing-Supplies",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => household_toilet_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Toilet-And-Floor-Cleaners",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                ],
                child: onHover1(builder: (isHovered1, isClicked) {
                  return Container(
                      child: Row(
                    children: [
                      Text(
                        "Household & Pets ",
                        style: TextStyle(
                            color: isHovered1 ? Colors.red : Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Transform.rotate(
                        angle: isClicked ? 3.14 / 2 : 0,
                        child: Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: isHovered1 || isClicked
                              ? Colors.red
                              : Colors.black,
                        ),
                      ),
                    ],
                  ));
                }),
              ),
                  SizedBox(width: 40),
              SubmenuButton(
                //    style: SubmenuButton.styleFrom(splashFactory: NoSplash.splashFactory),
                //       focusNode: null,
                //  menuStyle: ,
                menuChildren: <Widget>[
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => packaged_f_all_page(),
                            ));
                      },
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "All",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => packaged_f_sauces_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Sauces-And-Spreads",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => packaged_f_noodle_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Noodles",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => packaged_f_dairy_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Dairy-Products",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                ],
                child: onHover1(builder: (isHovered1, isClicked) {
                  return Container(
                      child: Row(
                    children: [
                      Text(
                        "Packaged Foods ",
                        style: TextStyle(
                            color: isHovered1 ? Colors.red : Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Transform.rotate(
                        angle: isClicked ? 3.14 / 2 : 0,
                        child: Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: isHovered1 || isClicked
                              ? Colors.red
                              : Colors.black,
                        ),
                      )
                    ],
                  ));
                }),
              ),
                  SizedBox(width: 40),
              SubmenuButton(
                menuChildren: <Widget>[
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => more_vegitable_page(),
                            ));
                      },
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Vegetable",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => more_dry_f_page(),
                            ));
                      },
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Dry-Fruits",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => more_diwali_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Diwali Special",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: 250,
                    color: Colors.white,
                    child: MenuItemButton(
                      style: MenuItemButton.styleFrom(
                          shape:
                              LinearBorder.bottom(size: 1, side: primarySide2)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => more_beverage_page(),
                            ));
                      },
                      //  child: const MenuAcceleratorLabel('All'),
                      child: onHover(builder: (isHovered) {
                        return Text(
                          "Beverages",
                          style: TextStyle(
                              color: isHovered ? Colors.red : Colors.black),
                        );
                      }),
                    ),
                  ),
                ],
                child: onHover1(builder: (isHovered1, isClicked) {
                  return Container(
                      child: Row(
                    children: [
                      Text(
                        "More ",
                        style: TextStyle(
                            color: isHovered1 ? Colors.red : Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Transform.rotate(
                        angle: isClicked ? 3.14 / 2 : 0,
                        child: Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: isHovered1 || isClicked
                              ? Colors.red
                              : Colors.black,
                        ),
                      )
                    ],
                  ));
                }),
              ),
              SizedBox(width: 100),
            ],
          )
    );
  }
}

class MenuAcceleratorApp extends StatelessWidget {
  const MenuAcceleratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.amber,
        hoverColor: Colors.black,
      ),
      home: Shortcuts(
        shortcuts: <ShortcutActivator, Intent>{
          const SingleActivator(LogicalKeyboardKey.keyT, control: true):
              VoidCallbackIntent(() {
            debugDumpApp();
          }),
        },
        child: const Scaffold(body: SafeArea(child: MyMenuBar())),
      ),
    );
  }
}
