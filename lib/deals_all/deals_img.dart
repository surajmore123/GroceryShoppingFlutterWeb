import 'package:flutter/material.dart';
import 'package:flutter_ls/HoverAll/onHover2.dart';

class deals extends StatefulWidget {
  @override
  State<deals> createState() => _dealsState();
}

class _dealsState extends State<deals> {
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
                      'Deals of the day',
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

       
          ],
        ),
      ),
    ); 

  }
}
