import 'dart:convert';

import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ls/constant.dart';
import 'package:flutter_ls/demo2.dart';
import 'package:flutter_ls/footer.dart';
import 'package:flutter_ls/nav.dart';
import 'package:flutter_ls/newmodel1.dart';
import 'package:flutter_ls/urllaunches/whatsappurl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:sticky_headers/sticky_headers/widget.dart';

class fruit_all_page extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  State<fruit_all_page> createState() => _fruit_all_pageState();
}

class _fruit_all_pageState extends State<fruit_all_page> {
  final ScrollController _scrollController = ScrollController();
  bool isVisible = false;

  @override
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

  List<Pro> prolist = [];
  final apiUrl = 'https://localshouts.com/api/search';
  Future<List<Pro>> getallproduct(
      String? category_name, String? subcategory_name) async {
    String apiUrlWithParams = apiUrl;

    if (category_name != null) {
      apiUrlWithParams += '?category_name=$category_name';

      if (subcategory_name != null) {
        apiUrlWithParams += '&subcategory_name=$subcategory_name';
      }
    }

    final response = await http.post(Uri.parse(apiUrlWithParams));

    var result = jsonDecode(response.body.toString());
    dynamic data = result['data']['productList'];

    if (response.statusCode == 200) {
      //   print(data);
      for (Map i in data) {
        //  print(data);
        prolist.add(Pro.fromJson(i));
      }
      return prolist;
    } else {
      return prolist;
    }
    //  print(prolist);
  }

  Widget build(BuildContext context) {
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

                      //  content: imageslider(),
                      content: Center(
                        child: Container(
                          width: 1100,
                          height: 680,
                          color: Colors.white,
                          child: Row(children: [
                            Container(
                              width: 200,
                              height: 650,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  color: Colors.grey,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2)),
                                  ]),
                            ),
                            SingleChildScrollView(
                              child: Container(
                                width: 900,
                                height: 650,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        /*spreadRadius: 5,blurRadius: 5,*/ offset:
                                            Offset(0, 0))
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 900,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                                width: 40,
                                                child: Text(
                                                  'Home',
                                                )),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Container(
                                                width: 10, child: Text('>')),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Container(
                                              width: 76,
                                              child: Text(
                                                'Product List',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Container(
                                                width: 10, child: Text('>')),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Container(
                                                width: 40,
                                                child: Text('Fruits')),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Container(
                                                width: 10, child: Text('>')),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Container(
                                                width: 45,
                                                child: Text('Apples')),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: FutureBuilder(
                                        future: getallproduct('fruits', ''),
                                        builder: (context, snapshot) {
                                          if (!snapshot.hasData) {
                                            return Text('Loading');
                                          } else {
                                            return GridView.builder(
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 4,
                                                      //   crossAxisSpacing: 2,
                                                      //  mainAxisSpacing: 2,
                                                      childAspectRatio: 3 / 4),
                                              itemCount: prolist.length,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 200,
                                                        height: 180,
                                                        child: Image.network(
                                                            "$imgBaseUrl${prolist[index].id}/${prolist[index].mainImage.toString()}"),
                                                      ),
                                                      Container(
                                                          width: 200,
                                                          height: 25,
                                                          color: Colors.white,
                                                          child: Center(
                                                              child: Text(
                                                            prolist[index]
                                                                .productName
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontSize: 13,
                                                            ),
                                                          ))),
                                                      Container(
                                                        width: 200,
                                                        height: 60,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 70,
                                                              height: 40,
                                                              color:
                                                                  Colors.white,
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .currency_rupee,
                                                                        color: Colors
                                                                            .green,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      Text(
                                                                        prolist[index]
                                                                            .discountedPrice
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.green,
                                                                            fontWeight: FontWeight.bold),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .currency_rupee,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      Text(
                                                                        prolist[index]
                                                                            .price
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            decoration:
                                                                                TextDecoration.lineThrough,
                                                                            fontWeight: FontWeight.bold),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 110,
                                                              height: 35,
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black),
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .local_grocery_store,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 15),
                                                                  Text(
                                                                    'Add to cart',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          }
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
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
                      //  Icon(
                      //   FontAwesomeIcons.whatsapp,
                      //   color: Colors.green,
                      //   size: 30,
                      // )
                    )),
              ),
              Positioned(
                  bottom: 50,
                  right: 45,
                  child: Visibility(
                    visible: isVisible,
                    child: Card(
                      elevation: 100,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.white,
                        child: FloatingActionButton(
                            onPressed: () {
                              _scrollController.animateTo(
                                  _scrollController.position.maxScrollExtent,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.ease);
                            },
                            shape: BeveledRectangleBorder(),
                            backgroundColor: Colors.white,
                            child: Icon(
                              FontAwesomeIcons.chevronUp,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  )),
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
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.solidComment,
                                color: Colors.white,
                                size: 28,
                              )),
                        )),
                  )),
            ],
          ),
        ));
  }
}
