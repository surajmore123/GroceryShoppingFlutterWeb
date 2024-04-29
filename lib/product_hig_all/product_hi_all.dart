import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ls/HoverAll/onHover2.dart';
import 'package:flutter_ls/constant.dart';
import 'package:flutter_ls/modelfile/productmodel.dart';
import 'package:flutter_ls/viewall_buttons/product_hi_button.dart';
import 'package:http/http.dart' as http;

class product_hi_all extends StatefulWidget {
  const product_hi_all({Key? key}) : super(key: key);

  @override
  State<product_hi_all> createState() => _product_hi_allState();
}

class _product_hi_allState extends State<product_hi_all> {
  int currentIndex = 0;
  int cartValue =0;
  List<Produ> modellist = [];
  Future<List<Produ>> getpostapi() async {
    final response =
        await http.get(Uri.parse('https://localshouts.com/api/dealsOfDayDisc'));
    var result = jsonDecode(response.body.toString());
    dynamic data = result['data'];
    if (response.statusCode == 200) {
      for (Map i in data) {
        modellist.add(Produ.fromJson(i));
      }
      return modellist;
    } else {
      return modellist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return
    
    Card(
      elevation: 100,
      child: Container(
           width: double.infinity,
           color: Colors.white,
        height: 370,
      
      child:     Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'Product Highlights',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: Container(
                      height: 40,
                      width: 90,
                      child: onHover1(builder: (isHovered1, isClicked) {
                        return FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Product_hi_button(),
                                ));
                          },
                          backgroundColor: Color.fromARGB(255, 15, 35, 51),
                          hoverColor: Colors.white,
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.5))),
                          elevation: 3,
                          child: Text("View All",
                              style: TextStyle(
                                color:
                                    isHovered1 ? Colors.blueGrey : Colors.white,
                              )),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ), // button row 1

            FutureBuilder(
              future: getpostapi(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text('Loading');
                } else {
                  return 
                  Container(width: double.infinity,height: 290,color: Colors.white,
                            child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: FloatingActionButton(
                            onPressed: () {
                              if (currentIndex > 0) {
                                setState(() {
                                  currentIndex--;
                                });
                              }
                            },
                            backgroundColor: Colors.white,
                            hoverColor: Colors.black,
                            elevation: 3,
                            shape: BeveledRectangleBorder(),
                            child: Icon(
                              Icons.chevron_left_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          width: 1050,
                          height: 270,
                       //   color: Colors.amber,

                          child: ListView.builder(
                            // physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: modellist.length,
                            itemBuilder: (context, index) {
                              //    final adjustedIndex = (index + currentIndex) % modellist.length;
                              final adjustedIndex =
                                  (index + currentIndex) % modellist.length;
                              final currentModel = modellist[adjustedIndex];
                              return Column(
                                children: [
                                  Container(
                                      width: 270,
                                      height: 150,
                                      child: Image.network(
                                          "$imgBaseUrl${modellist[adjustedIndex].id}/${modellist[adjustedIndex].mainImage.toString()}")),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    width: 120,
                                    height: 30,
                                    color: Color.fromRGBO(228, 116, 4, 1),
                                    child: currentModel.quantity == 0
                                        ? Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.local_grocery_store,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      currentModel.quantity++;
                                                      cartValue++;
                                                    });
                                                  },
                                                  child: Text(
                                                    "ADD TO CART",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11),
                                                  )),
                                            ],
                                          )
                                        : Container(
                                            width: 120,
                                            height: 30,
                                           
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: Colors.grey)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      currentModel.quantity--;
                                                       cartValue--;
                                                    });
                                                  },
                                                  
                                                  child: Container(
                                                    width: 35,
                                                    height: 30,
                                                   // color: Colors.white,
                                                    child: Icon(Icons.remove),
                                                  ),

                                                


                                                ),
                                        
                                                Container(
                                                  width: 48,
                                                  height: 30,
                                                  color:Color.fromARGB(255, 226, 222, 222),
                                                  child: Center(
                                                      child: Text(currentModel
                                                          .quantity
                                                          .toString())),
                                                ),

                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      currentModel.quantity++;
                                                      
                                          cartValue++;
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 35,
                                                    height: 30,
                                                    color: Colors.white,
                                                    child: Icon(Icons.add),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                      modellist[adjustedIndex]
                                          .productName
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.currency_rupee,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        Text(
                                          modellist[adjustedIndex]
                                              .price
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.currency_rupee,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        Text(
                                          modellist[adjustedIndex]
                                              .discountedPrice
                                              .toString(),
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    modellist[adjustedIndex].brand.toString(),
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              );
                            },
                          ),
                          
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          color: Colors.white,
                          child: FloatingActionButton(
                            onPressed: () {
                              if (currentIndex < modellist.length - 1) {
                                setState(() {
                                  currentIndex++;
                                });
                              }
                            },
                            backgroundColor: Colors.white,
                            hoverColor: Colors.black,
                            hoverElevation: 3,
                            shape: BeveledRectangleBorder(),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  
                  );
                 
                }
              },
            ),
          ],
        ),

      ),
    );

  }
}
