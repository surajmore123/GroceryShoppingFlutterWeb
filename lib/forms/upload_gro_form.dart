import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ls/connection/service.dart';
import 'package:flutter_ls/demo2.dart';
import 'package:flutter_ls/footer.dart';
import 'package:flutter_ls/forms/popupfeedbackpg.dart';
import 'package:flutter_ls/nav.dart';
import 'package:flutter_ls/urllaunches/whatsappurl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class grocery_form extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  State<grocery_form> createState() => _grocery_formState();
}

class _grocery_formState extends State<grocery_form> {
  final ScrollController _scrollController = ScrollController();
  bool isVisible = false;
  final _formKey = GlobalKey<FormState>();
  var values = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinController = TextEditingController();

  Services service = Services();
  void initState() {
    _scrollController?.addListener(() {
      if (_scrollController?.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isVisible == true) {
          setState(() {
            isVisible = false;
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
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
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

                      //  content: imageslider(),
                      content: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Card(
                              elevation: 12,
                              child: Container(
                                width: 550,
                                height: 550,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 500,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 520,
                                              child: Text(
                                                "Step 1: Fill the Form For Uploading Grocery Items      List. ",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              height: 29,
                                              width: 520,
                                              child: Text(
                                                  "This will create your account & proceed to next step. "),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 450,
                                        height: 45,
                                        child: TextFormField(
                                            controller: nameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Name should not be empty';
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              labelText: "Your Name",
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  letterSpacing: 1.3),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blue,
                                                      width: 2)),
                                              hintStyle:
                                                  TextStyle(letterSpacing: 1.3),
                                            )),
                                      ),
                                      Container(
                                        width: 450,
                                        height: 45,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 450,
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Mobile number should not be empty";
                                                  }
                                                },
                                                controller: mobileController,
                                                decoration: InputDecoration(
                                                  labelText: "Mobile Number",
                                                  labelStyle: TextStyle(
                                                      color: Colors.black,
                                                      letterSpacing: 1.3),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.5),
                                                  ),
                                                  suffix: Container(
                                                    width: 130,
                                                    height: 40,
                                                    child: FloatingActionButton(
                                                      onPressed: () {},
                                                      backgroundColor:
                                                          Colors.grey,
                                                      child: Text('Send OTP'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 450,
                                        height: 45,
                                        child: TextFormField(
                                          controller: addressController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Address should not be empty";
                                            }
                                          },
                                          decoration: InputDecoration(
                                              labelText: 'Address',
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  letterSpacing: 1.3),
                                              contentPadding:
                                                  EdgeInsets.all(15.0),
                                              border: OutlineInputBorder(
                                                gapPadding: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(3.5),
                                              )),
                                        ),
                                      ),
                                      Container(
                                        width: 450,
                                        height: 45,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 210,
                                              child: TextFormField(
                                                controller: cityController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "City should not be empty";
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  labelText: 'City',
                                                  labelStyle: TextStyle(
                                                    color: Colors.black,
                                                    letterSpacing: 1.3,
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.all(15.0),
                                                  border: OutlineInputBorder(
                                                      gapPadding: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.5)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 210,
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: pinController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Pin code should not be empty";
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  labelText: 'Pin Code',
                                                  labelStyle: TextStyle(
                                                    color: Colors.black,
                                                    letterSpacing: 1.3,
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.all(15.0),
                                                  border: OutlineInputBorder(
                                                      gapPadding: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.5)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            service.saveUser(
                                                nameController.text,
                                                mobileController.text,
                                                addressController.text,
                                                cityController.text,
                                                pinController.text);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                  content:
                                                      Text('Processing Data')),
                                            );
                                          }
                                        },
                                        child: Container(
                                          width: 200,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 255, 94, 0),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Center(
                                              child: Text(
                                            "Continue",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        width: 450,
                                        height: 20,
                                        child: Center(
                                            child: Text(
                                          '${values}',
                                          style: TextStyle(color: Colors.red),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    footer(),
                  ],
                ),
              ),
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
                          child: popupfeedbackpg()
                         

                        )),
                  )),
            ],
          ),
        ));
  }
}
