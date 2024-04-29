import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool hovering = false;

  Widget build(BuildContext context) {
    return 
  MouseRegion(
            onEnter: (details) => setState(() => hovering = true),
            onExit: (details) => setState(() {
              hovering = false;
            }),
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: hovering ? Colors.red : Colors.black,
                  ),
                )
  );
          

    
    // TextButton(
    //   onPressed: () {},
    //   style: ButtonStyle(
    //     foregroundColor: MaterialStateProperty.resolveWith<Color>(
    //         (Set<MaterialState> states) {
    //       if (states.contains(MaterialState.hovered)) return Colors.red;

    //       return Colors.black;
    //     }),
    //   ),
    //   child: const Text(
    //     'Home ',
    //     //   style: TextStyle(fontSize: 14),
    //   ),
    // );

// TextButton(
// style: ButtonStyle(
// foregroundColor: MaterialStateProperty.resolveWith<Color>(
// (Set<MaterialState> states) {
// if (states.contains(MaterialState.focused))
//   return Colors.red;
// if (states.contains(MaterialState.hovered))
//     return Colors.green;
// if (states.contains(MaterialState.pressed))
//     return Colors.blue;
// return Colors.yellow; // null throus error in flutter 2.2+.
// }),
// ),
// onPressed: () { },
// child: Text('Home'),
// );
  }
}
