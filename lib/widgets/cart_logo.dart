// import 'package:badges/badges.dart' as badges;
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class cart_logo extends StatefulWidget {
//   final Function(int) onCartValueChanged;
//    const cart_logo({required this.onCartValueChanged, Key? key}) : super(key: key);
//   @override
//   State<cart_logo> createState() => _cart_logoState();
// }

// class _cart_logoState extends State<cart_logo> {
//     int cartValue = 0;
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         print('pressed');
//         widget.onCartValueChanged(cartValue);
//       },
 
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//              width: 30,
//                 height: 30,
//            // color: Colors.black,
//             child: badges.Badge(
//               badgeContent: Text(
//               '$cartValue'
           
//               ),
//               showBadge: true,
//               badgeStyle: badges.BadgeStyle(
//                 shape: badges.BadgeShape.circle,
//                 badgeColor: Color.fromRGBO(250, 14, 14, 1),
//                 elevation: 5,
//                 padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//               ),
//               position: badges.BadgePosition.topEnd(),
//               child: Icon(FontAwesomeIcons.cartShopping,color: Colors.white,size: 22,)
//            //    child: Icon(FontAwesomeIcons.cartShopping,color: Color.fromARGB(66, 230, 8, 8),size: 22,)
          
          
//             ),
//           ),
//         ),
     
//     );
//     // Container();
//   }
// }


import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class cart_logo extends StatefulWidget {
  

  @override
  State<cart_logo> createState() => _cart_logoState();
}

class _cart_logoState extends State<cart_logo> {
  int cartValue = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('pressed');
       
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 30,
          height: 30,
          child: badges.Badge(
            badgeContent: Text(
              '$cartValue',
            ),
            showBadge: true,
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.circle,
              badgeColor: Color.fromRGBO(250, 14, 14, 1),
              elevation: 5,
              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            ),
            position: badges.BadgePosition.topEnd(),
            child: Icon(FontAwesomeIcons.cartShopping, color: Colors.white, size: 22),
          ),
        ),
      ),
    );
  }
}