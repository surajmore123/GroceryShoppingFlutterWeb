import 'package:flutter/material.dart';
import 'package:flutter_ls/HoverAll/onHover2.dart';
import 'package:flutter_ls/nevigapages/aboutus.dart';
import 'package:flutter_ls/urllaunches/facebookurl.dart';
import 'package:flutter_ls/urllaunches/instaurl.dart';
import 'package:flutter_ls/urllaunches/twitterurl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class footer extends StatefulWidget {
  @override
  State<footer> createState() => footerState();
}

class footerState extends State<footer> {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 91,
            color: const Color.fromARGB(255, 9, 21, 31),
            child: Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Container(
                  width: 230,
                  height: 41,
                  child: Text(
                    "Subscribe Newsletter",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 350,
                  height: 38,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(3),
                        topLeft: Radius.circular(3)),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email Address", border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                    width: 119,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(3),
                          topRight: Radius.circular(3)),
                      color: Colors.green[700],
                    ),
                    child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text("Subscribe now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ))),
                const SizedBox(
                  width: 150,
                ),
                Icon(
                  Icons.phone_iphone,
                  color: Colors.white,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "0 706 666 0033",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 105,
            color: Color.fromARGB(255, 15, 35, 51),
            child: Center(
              child: Container(
                height: 60,
           
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    Container(
                      height: 60,
                      width: 950,
                      // color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          onHover1(
                            builder: (isHovered1, isClicked) {
                              return InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 60,
                                  height: 25,
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                        color: isHovered1
                                            ? Colors.red
                                            : Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                          Container(
                            width: 1050,
                            height: 25,
                        //    color: Colors.amber,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    FontAwesomeIcons.slash,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 90,
                                  height: 30,
                                  child: onHover1(
                                      builder: (isHovered1, isClicked) {
                                    return Row(
                                      children: [
                                        Container(
                                          width: 2,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: isHovered1
                                                  ? Colors.red
                                                  : Colors.white),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        aboutus()));
                                          },
                                          child: Text(
                                            "  About us",
                                            style: TextStyle(
                                                color: isHovered1
                                                    ? Colors.red
                                                    : Colors.white),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                                Container(
                                  width: 150,
                                  height: 20,
                                  child: onHover1(
                                      builder: (isHovered1, isClicked) {
                                    return Row(
                                      children: [
                                        Container(
                                          width: 2,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: isHovered1
                                                  ? Colors.red
                                                  : Colors.white),
                                        ),
                                        Text(
                                          "  Vendor Signup",
                                          style: TextStyle(
                                              color: isHovered1
                                                  ? Colors.red
                                                  : Colors.white),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                                Container(
                                  width: 60,
                                  height: 20,
                                  child: onHover1(
                                      builder: (isHovered1, isClicked) {
                                    return Row(
                                      children: [
                                        Container(
                                          width: 2,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: isHovered1
                                                  ? Colors.red
                                                  : Colors.white),
                                        ),
                                        Text(
                                          "  Blogs",
                                          style: TextStyle(
                                              color: isHovered1
                                                  ? Colors.red
                                                  : Colors.white),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                                Container(
                                  width: 200,
                                  height: 20,
                                  child: onHover1(
                                      builder: (isHovered1, isClicked) {
                                    return Row(
                                      children: [
                                        Container(
                                          width: 2,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: isHovered1
                                                  ? Colors.red
                                                  : Colors.white),
                                        ),
                                        Text(
                                          "  Shipping&Returns",
                                          style: TextStyle(
                                              color: isHovered1
                                                  ? Colors.red
                                                  : Colors.white),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                                Container(
                                    width: 150,
                                    height: 20,
                                    child: onHover1(
                                        builder: (isHovered1, isClicked) {
                                      return Row(
                                        children: [
                                          Container(
                                            width: 2,
                                            height: 2,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: isHovered1
                                                    ? Colors.red
                                                    : Colors.white),
                                          ),
                                          Text(
                                            "  Privacy Policy",
                                            style: TextStyle(
                                                color: isHovered1
                                                    ? Colors.red
                                                    : Colors.white),
                                          ),
                                        ],
                                      );
                                    })),
                                Container(
                                    width: 60,
                                    height: 20,
                                    child: onHover1(
                                        builder: (isHovered1, isClicked) {
                                      return Row(
                                        children: [
                                          Container(
                                            width: 2,
                                            height: 2,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: isHovered1
                                                    ? Colors.red
                                                    : Colors.white),
                                          ),
                                          Text(
                                            "  T&C",
                                            style: TextStyle(
                                                color: isHovered1
                                                    ? Colors.red
                                                    : Colors.white),
                                          ),
                                        ],
                                      );
                                    })
                                    //T&C
                                    ),
                                Container(
                                    width: 100,
                                    height: 20,
                                    child: onHover1(
                                        builder: (isHovered1, isClicked) {
                                      return Row(
                                        children: [
                                          Container(
                                            width: 2,
                                            height: 2,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: isHovered1
                                                    ? Colors.red
                                                    : Colors.white),
                                          ),
                                          Text(
                                            "  Sitemap",
                                            style: TextStyle(
                                                color: isHovered1
                                                    ? Colors.red
                                                    : Colors.white),
                                          ),
                                        ],
                                      );
                                    })
                                    //Sitemap
                                    ),

                                // Container(
                                //     width: 200,
                                //     height: 20,
                                //     child: onHover1(
                                //         builder: (isHovered1, isClicked) {
                                //       return Row(
                                //         children: [
                                //           Container(
                                //             width: 2,
                                //             height: 2,
                                //             decoration: BoxDecoration(
                                //                 shape: BoxShape.circle,
                                //                 color: isHovered1
                                //                     ? Colors.red
                                //                     : Colors.white),
                                //           ),
                                //           Text(
                                //             "  Local Shouts 2019-2020",
                                //             style: TextStyle(
                                //                 color: isHovered1
                                //                     ? Colors.red
                                //                     : Colors.white),
                                //           ),
                                //         ],
                                //       );
                                //     })
                                //     ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    Container(
                      height: 60,
                      width: 180,
                
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 30,
                            child: Text(
                              "Follow us :",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          onHover1(builder: (isHovered1, isClicked) {
                            return Container(
                              width: 25,
                              height: 25,
                              color: Colors.white,
                              child: IconButton(
                                  onPressed: facebookUrl,
                                  icon: Center(
                                    child: Icon(
                                      FontAwesomeIcons.facebookF,
                                      color: isHovered1
                                          ? Colors.white
                                          : Colors.black,
                                      size: 15,
                                    ),
                                  ),
                                  hoverColor:
                                      const Color.fromARGB(255, 255, 94, 0),
                                  style: IconButton.styleFrom(
                                      shape: BeveledRectangleBorder())),
                            );
                          }),
                          SizedBox(
                            width: 8,
                          ),
                          onHover1(builder: (isHovered1, isClicked) {
                            return Container(
                                width: 25,
                              height: 25,

                              color: Colors.white,
                              //   child: Icon(FontAwesomeIcons.facebookF,color: Colors.black,size: 15,),
                              child: IconButton(
                                  onPressed: twitterUrl,
                                  icon: Icon(
                                    FontAwesomeIcons.twitter,
                                    color: isHovered1
                                        ? Colors.white
                                        : Colors.black,
                                    size: 15,
                                  ),
                                  hoverColor:
                                      const Color.fromARGB(255, 255, 94, 0),
                                  style: IconButton.styleFrom(
                                      shape: BeveledRectangleBorder())),
                            );
                          }),
                          SizedBox(
                            width: 8,
                          ),
                          onHover1(builder: (isHovered1, isClicked) {
                            return Container(
                            width: 25,
                              height: 25,
                              color: Colors.white,
                              //   child: Icon(FontAwesomeIcons.facebookF,color: Colors.black,size: 15,),
                              child: IconButton(
                                  onPressed: instaUrl,
                                  icon: Icon(
                                    FontAwesomeIcons.squareInstagram,
                                    color: isHovered1
                                        ? Colors.white
                                        : Colors.black,
                                    size: 15,
                                  ),
                                  hoverColor:
                                      const Color.fromARGB(255, 255, 94, 0),
                                  style: IconButton.styleFrom(
                                      shape: BeveledRectangleBorder())),
                            );
                          }),
                        ],
                      ),
                    ),
              
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
/*
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 300,
                  height: 40,
                  // color: Colors.white,
                  child: Text(
                    "Subscribe Newsletter",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                ),
                Container(
                  height: 40,
                  width: 500,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 370,
                        //    color: Colors.amber,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Email address',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blueAccent, width: 3)),
                            /*
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black87)
                    )
                    */
                            enabledBorder: OutlineInputBorder(
                                // borderSide: BorderSide(
                                //     color: Colors.grey, width: 2)
                                    ),
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        color: Colors.blueGrey,
                        child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 1, 63, 3)),
              child: Text('Subscribe Now')),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 40,
                  color: Colors.grey,
                ),
                Container(
                  width: 300,
                  height: 40,
                  //  color: Colors.amber,
                  child: Text(
                    "+91 7578410574",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 213, 94, 94),
            height: 200,
          ),
        ],
      ),
    );

    */
  }
}
