import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class popupfeedbackpg extends StatefulWidget
{
  @override
  State<popupfeedbackpg> createState() => _popupfeedbackpgState();
}

class _popupfeedbackpgState extends State<popupfeedbackpg> {
   TextEditingController nameController = TextEditingController();
  Widget build(BuildContext context)
  {
    return  
      IconButton(
                              onPressed: () {
                                
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          top: 90.0, left: 1000),
                                      child: Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        elevation: 16,
                                        child: Container(
                                          width: 300,
                                          height: 400,
                                          child: SingleChildScrollView(
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      width: 300,
                                                      height: 170,
                                                      decoration:
                                                          const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          topRight:
                                                              Radius.circular(
                                                                  5),
                                                        ),
                                                        color: Color.fromARGB(
                                                            255, 4, 27, 4),
                                                      ),
                                                      child: const Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 20,
                                                                    right: 8,
                                                                    left: 8),
                                                            child: Text(
                                                              "Please fill out the form below and ",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 17),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 1,
                                                                    right: 8,
                                                                    left: 8),
                                                            child: Text(
                                                              "we will get back to you as soon as ",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 17),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 1,
                                                                    right: 8,
                                                                    left: 8),
                                                            child: Text(
                                                              "possible ",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 17),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 300,
                                                      height: 300,
                                                      color: Colors.grey,
                                                    ),
                                                  ],
                                                ),
                                                Positioned(
                                                  top: 140,
                                                  left: 26,
                                                  child: Container(
                                                    width: 230,
                                                    height: 300,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(5),
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5)),
                                                      color: Colors.white,
                                                    ),
                                                    child: Column(
                                                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Container(
                                                          width: 200,
                                                          height: 45,
                                                          child: TextFormField(
                                                              controller:
                                                                  nameController,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return 'Name should not be empty';
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    "* Name",
                                                                labelStyle: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        1.3),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: Colors
                                                                            .blue,
                                                                        width:
                                                                            2)),
                                                                hintStyle: TextStyle(
                                                                    letterSpacing:
                                                                        1.3),
                                                              )),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Container(
                                                          width: 200,
                                                          height: 45,
                                                          child: TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                            labelText:
                                                                "* Email",
                                                            labelStyle: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    1.3),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey)),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                        color: Colors
                                                                            .blue,
                                                                        width:
                                                                            2)),
                                                            hintStyle: TextStyle(
                                                                letterSpacing:
                                                                    1.3),
                                                          )),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Container(
                                                          width: 200,
                                                          height: 70,
                                                          child: TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                            labelText:
                                                                "* Message",
                                                            labelStyle: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    1.3),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey)),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                        color: Colors
                                                                            .blue,
                                                                        width:
                                                                            2)),
                                                            hintStyle: TextStyle(
                                                                letterSpacing:
                                                                    1.3),
                                                          )),
                                                        ),
                                                        SizedBox(
                                                          height: 30,
                                                        ),
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Container(
                                                            width: 200,
                                                            height: 45,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          5),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          5),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          5),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          5)),
                                                              color: Color
                                                                  .fromARGB(255,
                                                                      4, 27, 4),
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 45,
                                                                ),
                                                                Transform
                                                                    .rotate(
                                                                  angle: 180 *
                                                                      math.pi /
                                                                      80,
                                                                  child:
                                                                      const Icon(
                                                                    FontAwesomeIcons
                                                                        .solidPaperPlane,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 6,
                                                                ),
                                                                const Text(
                                                                  'Submit',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          20),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                                
                              },
                              icon: const Icon(
                                FontAwesomeIcons.solidComment,
                                color: Colors.white,
                                size: 28,
                              ));
  }
}