import 'package:flutter/material.dart';
import 'package:flutter_ls/widgets/home.dart';

class name_logo extends StatelessWidget {
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      //  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
        Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
      },
      child: Container(
        width: 200,
        height: 40,
        child: Image(
            image:
                NetworkImage("https://localshouts.com/assets/images/logo.png")),
      ),
    );
  }
}
