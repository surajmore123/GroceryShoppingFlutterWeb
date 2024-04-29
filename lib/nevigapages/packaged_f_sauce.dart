import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ls/constant.dart';
import 'package:flutter_ls/demo2.dart';
import 'package:flutter_ls/footer.dart';
import 'package:flutter_ls/nav.dart';
import 'package:flutter_ls/newmodel1.dart';
import 'package:http/http.dart' as http;
class packaged_f_sauces_page extends StatefulWidget {
  @override
  State<packaged_f_sauces_page> createState() => _packaged_f_sauces_pageState();
}

class _packaged_f_sauces_pageState extends State<packaged_f_sauces_page> {
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,

          child: Container(
            color: Colors.white70,
            child: Column(
              children: [
                nav(),
                // menubar(),
                 MyMenuBar(),
                  Container(
                  width: 1100,
                  height: 680,
                  color: Colors.white,
                  child: Row(children: [
                    Container(
                      width: 200,
                      height: 650,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.grey,
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.2)),
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
                                  border: Border.all(color: Colors.grey)),
                              child: Row(
                                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                        width: 40,
                                        child: Text(
                                          'Home',
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child:
                                        Container(width: 10, child: Text('>')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Container(
                                      width: 76,
                                      child: Text(
                                        'Product List',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child:
                                        Container(width: 10, child: Text('>')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Container(
                                        width: 80, child: Text('Packaged-Foods')),
                                  ),
                                    Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Container(
                                        width: 150, child: Text('Sauces-And-Spreads')),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FutureBuilder(
                                future: getallproduct('packaged-foods', 'sauces-and-spreads'),
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
                                              // Padding(
                                              //   padding: const EdgeInsets.only(
                                              //       left: 150),
                                              //   child: Container(
                                              //     width: 75,
                                              //     height: 20,
                                              //     color: Colors.green,
                                              //   ),
                                              // ),
                                              Container(
                                                width: 200,
                                                height: 180,
                                                //  color: Colors.white,
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
                                                      color: Colors.white,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .currency_rupee,
                                                                color: Colors
                                                                    .green,
                                                                size: 15,
                                                              ),
                                                              Text(
                                                                prolist[index]
                                                                    .discountedPrice
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .green,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
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
                                                                size: 15,
                                                              ),
                                                              Text(
                                                                prolist[index]
                                                                    .price
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .lineThrough,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.black),
                                                        color: Colors.white,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .local_grocery_store,
                                                              color:
                                                                  Colors.black,
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
                SizedBox(
                  height: 20,
                ),
                footer(),



                // footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
