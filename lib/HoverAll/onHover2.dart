// import 'package:flutter/cupertino.dart';

// class onHover1 extends StatefulWidget
// {
//     final Widget Function(bool isHovered, bool isClicked) builder;
//   const onHover1({Key? key, required this.builder}) : super(key: key);
//   @override
//   State<onHover1> createState() => _onHover1State();
// }

// class _onHover1State extends State<onHover1> {
//    bool isHovered1 = false;
//    bool isClicked = false;
 
//   Widget build(BuildContext context)
//   {
//     //     return MouseRegion(
//     //   onEnter: (_)=> onEntered(true),
//     //   onExit: (_)=> onEntered(false),
    
//     //     child: widget.builder(isHovered1),
      
//     // );
//         return GestureDetector(
//       onTap: () => onTapped(),
//       child: MouseRegion(
//         onEnter: (_) => onEntered(true),
//         onExit: (_) => onEntered(false),
        
//         child: widget.builder(isHovered1, isClicked),
//       ),
//     );


//   }

  
//   void onEntered(bool isHovered1){
//     setState(() {
//       this.isHovered1 = isHovered1;
//     });
//   }

  
//   void onTapped() {
//     setState(() {
//       isClicked = !isClicked;
//     });
//   }


// }\

import 'dart:async';

import 'package:flutter/cupertino.dart';

class onHover1 extends StatefulWidget
{
    final Widget Function(bool isHovered, bool isClicked) builder;
  const onHover1({Key? key, required this.builder}) : super(key: key);
   
  @override
  State<onHover1> createState() => _onHover1State();
}

class _onHover1State extends State<onHover1> {
   bool isHovered1 = false;
   bool isClicked = false;
     late Timer hoverResetTimer;
 
  Widget build(BuildContext context)
  {

        return GestureDetector(
      onTap: () => onTapped(),
      child: MouseRegion(
        onEnter: (_) => onEntered(true),
        onExit: (_) => onEntered(false),
        
        child: widget.builder(isHovered1, isClicked),
      ),
    );


  }

  
   void onEntered(bool isHovered1) {
    if (!isClicked) {
      setState(() {
        this.isHovered1 = isHovered1;
      });
    }
  }

  
 void onExited() {
    if (!isClicked) {
      // Delayed reset to original color after cursor is removed
      hoverResetTimer = Timer(Duration(milliseconds: 200), () {
        setState(() {
          isHovered1 = false;
        });
      });
    }
  }

  
  void onTapped() {
    setState(() {
      isClicked = !isClicked;
      // Reset hover state after tap
      if (!isClicked) {
        isHovered1 = false;
      }
    });
  }
  @override
  void dispose() {
    hoverResetTimer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }
}

