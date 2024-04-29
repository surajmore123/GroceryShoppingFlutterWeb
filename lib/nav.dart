import 'package:flutter/material.dart';
import 'package:flutter_ls/widgets/cart_logo.dart';
import 'package:flutter_ls/widgets/login_logo.dart';
import 'package:flutter_ls/widgets/name_logo.dart';
import 'package:flutter_ls/widgets/searchbox.dart';
import 'package:flutter_ls/widgets/upload_groc_list.dart';
import 'package:flutter_ls/widgets/upload_prescrip.dart';

class nav extends StatefulWidget {
  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return
    
    /*
     Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
        //  color:Colors.grey.shade900
        color: Color.fromARGB(255, 15, 35, 51),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const SizedBox(
            width: 100,
          ),
          name_logo(),
          const SizedBox(
            width: 25,
          ),
          searchbar(),
          const SizedBox(
            width: 20,
          ),
          uploadgrolist(),
          const SizedBox(
            width: 10,
          ),
          upload_prescrip(),
          const SizedBox(
            width: 20,
          ),
          login_logo(),
          const SizedBox(
            width: 15,
          ),
          cart_logo(),
        ],
      ),
    );
    */
   Container(width: double.infinity,height: 100,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
        //  color:Colors.grey.shade900
        color: Color.fromARGB(255, 15, 35, 51),
      ),
         child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const SizedBox(
            width: 100,
          ),
          name_logo(),
          const SizedBox(
            width: 20,
          ),
          searchbar(),
          const SizedBox(
            width: 20,
          ),
          uploadgrolist(),
          const SizedBox(
            width: 10,
          ),
          upload_prescrip(),
          const SizedBox(
            width: 20,
          ),
          login_logo(),
          const SizedBox(
            width: 10,
          ),
          cart_logo(),
        ],
      ),
      );
   
  }
}
