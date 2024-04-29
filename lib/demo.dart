
import 'package:flutter/material.dart';
import 'package:flutter_ls/HoverAll/onHover.dart';
import 'package:flutter_ls/HoverAll/onHover2.dart';
import 'package:flutter_ls/nevigapages/fruit_apple_page.dart';
import 'package:flutter_ls/nevigapages/fruits_all_page.dart';
import 'package:flutter_ls/widgets/home.dart';

class HoverEffectWidget extends StatefulWidget {
  final Function(bool) builder;

  const HoverEffectWidget({Key? key, required this.builder}) : super(key: key);

  @override
  _HoverEffectWidgetState createState() => _HoverEffectWidgetState();
}

class _HoverEffectWidgetState extends State<HoverEffectWidget> {
  bool isPressed = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        child: Row(
          children: [
            Text(
              "Fruits",
              style: TextStyle(
                color: isPressed ? Colors.red : Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            Transform.rotate(
              angle: isPressed ? 3.14 / 2 : 0, // Rotate 90 degrees if pressed
              child: Icon(
                Icons.chevron_right,
                size: 19,
                color: isPressed ? Colors.red : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
       var color = Colors.transparent;
    final BorderSide primarySide2 = BorderSide(width: 0.20, color: Colors.grey);
    return MenuBar(
      children: [
           onHover1(builder: (isHovered1,isClicked) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                     //           builder: (context) => MyHomePage(),
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
                  }
                  ),

                    SubmenuButton(
                    style: SubmenuButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,
                        disabledBackgroundColor: null),
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
                              shape: LinearBorder.bottom(
                                  size: 1, side: primarySide2)),
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
                    child: onHover1(builder: (isHovered1,isClicked) {
                      return Container(
                          child: Row(
                        children: [
                          Text(
                            "Fruits",
                            style: TextStyle(
                                color: isHovered1 ? Colors.red : Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                      Icon(
                              Icons.chevron_right,
                              size: 19,
                              color: isHovered1 ? Colors.red : Colors.black,
                            ),
                                             
                        ],
                      )
                      );
                    }),
                  ),
      ],
    
    );
  }
}

