import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ls/beverages/beverages_img.dart';
import 'package:flutter_ls/cooking_e_all/cooking_e_img.dart';
import 'package:flutter_ls/deals_all/deals_img.dart';
import 'package:flutter_ls/dryfruits_all/dryfruits_img.dart';
import 'package:flutter_ls/fruits_all/fruits_img.dart';
import 'package:flutter_ls/packaged_all/packaged_img.dart';
import 'package:flutter_ls/personal_all/personal_img.dart';
import 'package:flutter_ls/product_hig_all/product_hi_all.dart';
import 'package:flutter_ls/vagitable_all/vagitable_img.dart';

class imageslider extends StatefulWidget {
  @override
  State<imageslider> createState() => imagesliderState();
}

class imagesliderState extends State<imageslider> {
 CarouselController carouselController = CarouselController();




  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      height: 4580,
      width: double.infinity,
      child: Stack(
        children: [
       Container(
            width: double.infinity,
            height: 543,
            child: ListView(
              children: [
                CarouselSlider(
                    carouselController: carouselController, 
                  items: [
                    //1st Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/1558098745packfood.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/1607003498banner7.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/ban3.1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/1607003625banner1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 543,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 4 / 3,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 300),
                    viewportFraction: 1,

                     
                  
                  ),
                ),
                


              ],
              
            ),
          ),
          Positioned(
              top: 230,
              child: Container(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                    onPressed: () {
               carouselController.previousPage();
                      
                    },
                    backgroundColor: Colors.white,
                 //   hoverColor: Colors.black,
                    shape: BeveledRectangleBorder(),
                    child: Icon(
                      Icons.chevron_left_outlined,
                      color: Colors.grey,
                    )),
              )),
                 Positioned(
              left: 1560,
              top: 230,
              child: Container(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                    onPressed: () {
                    carouselController.nextPage();
                    },
                    backgroundColor: Colors.white,
                 //   hoverColor: Colors.black,
                    shape: BeveledRectangleBorder(),

                    child: Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.grey,
                    )),
              )),

       

          Positioned(
            top: 300,
            left: 100,
            right: 100,
            child: Center(
              child: Column(
                children: [
                  product_hi_all(),
                  food_img(),

                  Container(
                    width: 1155,
                          height: 280,
                       //   color : Colors.amber,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                            elevation: 2,
                            child: Container(
                      
                            //  width: 890,
                             // height: 270,
                              width: 700,
                              height: 220,

                              color:Colors.white,
                             

                              child: Container(
                                // width: 840,
                                // height: 257.67,
                                
                                width: 650,
                                height: 257.67,
                                child: Image(
                                    image: NetworkImage(
                                        "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/cookingessentials.jpg")),
                              ),
                            )),
                        Card(
                          elevation: 2,
                          child: Container(
                            // width: 463.36,
                            // height: 286.88,
                             width: 400,
                             height: 286.88,
                          
                            color: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Image(
                                  image: NetworkImage(
                                      "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/Celebrate - Canva Banner.png")),
                            ),
                          ),
                        )
                      ],
                    ),
                  ), // image container 1

                  vegitable(),
                  dryfruits(),

                   Container(
                    width: 1155,
                          height: 280,
                       //   color : Colors.amber,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                            elevation: 2,
                            child: Container(
                      
                            //  width: 890,
                             // height: 270,
                              width: 700,
                              height: 220,

                              color:Colors.white,
                             

                              child: Container(
                                // width: 840,
                                // height: 257.67,
                                
                                width: 650,
                                height: 257.67,
                                child: Image(
                                    image: NetworkImage(
                                        "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/packaging%20food.jpg")),
                              ),
                            )),
                        Card(
                          elevation: 2,
                          child: Container(
                            // width: 463.36,
                            // height: 286.88,
                             width: 400,
                             height: 286.88,
                          
                            color: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Image(
                                  image: NetworkImage(
                                      "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/20200409_150759_0000.png")),
                            ),
                          ),
                        )
                      ],
                    ),
                  ), // image container 1

             


                  deals(),
                  cooking_e(),
  Container(
                    width: 1155,
                          height: 280,
                       //   color : Colors.amber,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                            elevation: 2,
                            child: Container(
                      
                            //  width: 890,
                             // height: 270,
                              width: 700,
                              height: 220,

                              color:Colors.white,
                             

                              child: Container(
                                // width: 840,
                                // height: 257.67,
                                
                                width: 650,
                                height: 257.67,
                                child: Image(
                                    image: NetworkImage(
                                        "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/packaging%20food.jpg")),
                              ),
                            )),
                        Card(
                          elevation: 2,
                          child: Container(
                            // width: 463.36,
                            // height: 286.88,
                             width: 400,
                             height: 286.88,
                          
                            color: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Image(
                                  image: NetworkImage(
                                      "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/20200409_150759_0000.png")),
                            ),
                          ),
                        )
                      ],
                    ),
                  ), // image container 1
  
                  

                  personal_c(),
                  packaged(),
                  //        beverages(),
                  beverages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}






