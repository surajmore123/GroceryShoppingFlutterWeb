import 'package:flutter/material.dart';
import 'package:flutter_ls/forms/upload_gro_form.dart';

class uploadgrolist extends StatelessWidget {
  Widget build(BuildContext context) {
    return

              Container(
                  width: 170,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.green[500],
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                           Icons.local_grocery_store,
                            color: Colors.white,
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  grocery_form(),
                                ));
                          },
                          child: const Text("Upload Grocery List",
                              style: TextStyle(
                                color: Colors.white,
                              )))
                    ],
                  ));
  }
}


// Icons.local_grocery_store,