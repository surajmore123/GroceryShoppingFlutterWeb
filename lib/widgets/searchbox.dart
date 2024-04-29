import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container(
        //   width: 350,
        //   height: 40,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        //   ),
        //   child: TextField(
        //     decoration: InputDecoration(
        //         hintText: 'Product Search',

        //         //label: Text("chehdch"),
        //         enabledBorder: OutlineInputBorder(
        //             borderSide: BorderSide(color: Colors.white))),
        //   ),
        // ),
            Container(
                width: 400,
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
                        hintText: "Product Search", border: InputBorder.none),
                  ),
                ),
              ),


Container(
                  width: 68,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(3),
                        topRight: Radius.circular(3)),
                    color: Colors.green[700],
                  ),
                  child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Text("Search",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ))),

        // Container(
        //   height: 40,
        //   decoration: BoxDecoration(),
        //   child: ElevatedButton(
        //       onPressed: () {},
        //       style: ElevatedButton.styleFrom(
        //           primary: Color.fromARGB(255, 1, 63, 3)),
        //       child: Text('Search')),
        // )
      ],
    );
  }
}
