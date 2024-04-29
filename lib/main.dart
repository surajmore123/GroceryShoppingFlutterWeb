import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ls/home.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final yourTheme = ThemeData.light();
    return ResponsiveApp(
      builder: (p0) {
        return MaterialApp(
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse},
          ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',

          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,

          ),
         //     home: MyHomePage(),\
         home:homescreen(),
        //  home: grocery_form(),

          //  home: hideMenubar(),
          // home: footer(),
        );
      },
    );
  }
}

/*

class MyHomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  bool isVisible = false;

  @override
  void initState() {
    _scrollController?.addListener(() {
      if (_scrollController?.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isVisible == true) {
          setState(() {
            isVisible = true;
          });
        }
      } else {
        if (_scrollController?.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (isVisible == false) {
            setState(() {
              isVisible = true;
            });
          }
        }
      }
      if (_scrollController.position.pixels == 0.0) {
        if (isVisible == true) {
          setState(() {
            isVisible = false;
          });
        }
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    var values = "";
    return 

    Scaffold(
        key: widget._scaffoldKey,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Scrollbar(
                controller: _scrollController,
                thickness: 15,
                thumbVisibility: true,
                trackVisibility: true,
                interactive: true,
                radius: const Radius.elliptical(0, 0),
                child: ListView(
                  controller: _scrollController,
                  children: [
                    nav(),
                    StickyHeader(
                      controller: _scrollController,
                      header: const MyMenuBar(),
                      content: imageslider(),
                    ),
                    footer(),
                  ],
                ),
              ),
              // hideed menubar
              Positioned(
                  child: Visibility(
                visible: isVisible,
                child: InkWell(
                  onTap: () {
                    _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                    );
                  },
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    color: Colors.white,
                    child: hideMenubar(),
                    // child: MyMenuBar(),
                  ),
                ),
              )),
              Positioned(
                top: 80.0,
                left: 10,
                child: Visibility(
                    visible: isVisible,
                    child: InkWell(
                      onTap: () {
                        whatsappurl();
                        _scrollController.animateTo(
                          _scrollController.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                        );
                      },
                      child: Image(
                        image: NetworkImage(
                          'https://localshouts.com/assets/images/call-logo.svg',
                        ),
                        height: 33,
                        width: 33,
                      ),
                    )),
              ),

              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                bottom: isVisible ? 50 : -60,
                right: 45,
                child: Card(
                  elevation: 100,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                    child: FloatingActionButton(
                      onPressed: () {
                        _scrollController.animateTo(
                          0,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                        );
                      },
                      shape: BeveledRectangleBorder(),
                      backgroundColor: Colors.white,
                      child: Icon(
                        FontAwesomeIcons.chevronUp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 8,
                  right: 23,
                  child: Container(
                    width: 53,
                    height: 53,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  )),

              Positioned(
                  bottom: 10,
                  right: 25,
                  child: badges.Badge(
                    badgeContent: Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    ),
                    showBadge: true,
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.circle,
                      badgeColor: const Color.fromARGB(255, 230, 22, 7),
                      elevation: 3,
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    ),
                    position: badges.BadgePosition.topEnd(),
                    child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: popupfeedbackpg(),


                              
                 
            
                              

                              ),

               ),
                  )),
            ],
          ),
        ));
  }
}
*/