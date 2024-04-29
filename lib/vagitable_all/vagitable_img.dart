import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ls/HoverAll/onHover2.dart';
import 'package:flutter_ls/modelfile/productmodel.dart';
import 'package:flutter_ls/nevigapages/more_vegitable.dart';
import 'package:http/http.dart' as http;

import '../constant.dart';

class vegitable extends StatefulWidget {
  @override
  State<vegitable> createState() => _vegitableState();
}

class _vegitableState extends State<vegitable> {
  int currentIndex =0;
    List<Produ> modellist = [];
   Future<List<Produ>> getpostapi (String category) async
   {


       final baseUrl = "https://localshouts.com/api/catProduct";
    final url = Uri.parse(baseUrl);
    final response = await http.post(url, body: {'category': category.toString()});
             
    var result = jsonDecode(response.body.toString());
    dynamic data = result['data'];
      if(response.statusCode == 200)
    {
    for(Map i in data)
    {
      modellist.add(Produ.fromJson(i));
    }
    return modellist;
    } 
    else{
return modellist;
    }

   }
  Widget build(BuildContext context) {
    return Card(
      elevation: 100,
      child: Container(
        width: double.infinity,
        height: 370,
        color: Colors.white,
        child: Column(
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
                      'Vegitable',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 90,
                      child: onHover1( builder: (isHovered1,isClicked)
                      {
                        return   FloatingActionButton(
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder:(context) => more_vegitable_page(),));
                          },
                            backgroundColor:   Color.fromARGB(255, 15, 35, 51),
                          hoverColor: Colors.white,
                          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.5))),
                          elevation: 3,
                         
                          child: Text("View All",
                              style: TextStyle(
                                color: isHovered1? Colors.blueGrey : Colors.white, 
                              )),
                        );
                      }
                       
                      ),
                    ),
                  ),
                ],
              ),
            ), // button row 1

            FutureBuilder(
              future: getpostapi('vegetable'),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text('Loading');
                } else {
                  return Container(
                    width: double.infinity,
                    height: 290,
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
                          child: ListView.builder(
                            // physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: modellist.length,
                            itemBuilder: (context, index) {
                              //    final adjustedIndex = (index + currentIndex) % modellist.length;
                              final adjustedIndex =
                                  (index + currentIndex) % modellist.length;
                              return  Center(
                                  child: Column(
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
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 12),
                                              child: Icon(
                                                Icons.local_grocery_store,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 11),
                                              child: Text(
                                                'ADD TO CART',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
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
                                  ),
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
/*
    return Card(
      elevation: 100,
      child: Container(
        width: 1100,
        height: 400,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Vegitable',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => more_vegitable_page(),));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text("View All",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                )
              ],
            ), // vegitable button row 1

                  FutureBuilder(
              future: getpostapi('vegetable'),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text('Loading');
                } else {
                  return Container(
                    width: 1100,
                    height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,height: 40, color:  Colors.white,
                          child: ElevatedButton(onPressed:() {
                            if(currentIndex> 0)
                            {
                              setState(() {
                                
                                currentIndex--;
                              });
                            }
                            
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.white),
                           child: Icon(Icons.chevron_left_outlined,color: Colors.black,)),
                        ),
                        Container(width: 970,height: 300,
                        child: ListView.builder(
                      // physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: modellist.length,
                      itemBuilder: (context, index) {
                       final adjustedIndex = (currentIndex + index) % modellist.length;
                        return Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 200,
                                  height: 200,
                                 // color: Colors.amber,
                                  child: Image.network("$imgBaseUrl${modellist[adjustedIndex].id}/${modellist[adjustedIndex].mainImage.toString()}")
                                  ),
                              ),
                                Container(
                                  width: 150,
                                  height: 30,
                                  color: Color.fromARGB(255, 255, 98, 0),
                                  child: Row(
                                  //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Icon(Icons.local_grocery_store,color: Colors.white,size: 15),
                                      ),
                                      Text('Add to cart',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                    ],
                                  ),
                                ),
                          
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.green,size: 15,),
                                      Text(modellist[adjustedIndex].price.toString(),style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 10,),
                                       Icon(Icons.currency_rupee,color: Colors.black,size: 15,),
                                         Text(modellist[adjustedIndex].discountedPrice.toString(),style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                            ),
                               
                             
                              Text(modellist[adjustedIndex].brand.toString(),style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        );
                      },
                    ),
                        ),
                         Container(
                          width: 40,height: 40, color:  Colors.white,
                          child: ElevatedButton(onPressed:() {
                            if(currentIndex < modellist.length -1)
                            {
                              setState(() {
                                currentIndex++;
                              });
                            }
                            
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.white),
                           child: Icon(Icons.chevron_right_outlined,color: Colors.black,)),
                        ),

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
    */
  }
}
