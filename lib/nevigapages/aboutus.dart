import 'package:flutter/material.dart';
import 'package:flutter_ls/demo2.dart';
import 'package:flutter_ls/footer.dart';
import 'package:flutter_ls/nav.dart';

class aboutus extends StatefulWidget

{
  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  Widget build(BuildContext context)

  {
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
                MyMenuBar(),
                Container(
                  width: 400,height: 400,
                  child: Center(child: Text('About us page',)),
                ),
             
                SizedBox(
                  height: 20,
                ),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}