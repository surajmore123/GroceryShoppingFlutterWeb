import 'package:flutter/widgets.dart';

class onHover3 extends StatefulWidget
{
    final Function(bool) builder;
      const onHover3({Key? key, required this.builder}) : super(key: key);
  @override
  State<onHover3> createState() => _onHover3State();
}

class _onHover3State extends State<onHover3> {
   bool isPressed = false;

  Widget build (BuildContext context)
  {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: widget.builder(isPressed),
    );

  }
    void onEntered(bool isPressed){
    setState(() {
      this.isPressed = isPressed;
    });
  }
}