import 'package:flutter/material.dart';

class popuploginpg extends StatelessWidget
{
  Widget build (BuildContext context)
  {
    return InkWell(
      onTap: (){
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
                                          color: Colors.amber,

                                       
                                                        
                                                
                                        
                                           
                                        ),
                                      ),
                                    );
                                  },
                                );
      },
      child: Card(
        elevation: 5,
        child: Container(
          width: 300,
          height: 400,
          color: Colors.white,
        ),
      ),
    );
  }
}