
// import 'dart:convert';


// import 'package:flutter_ls/constant.dart';
// import 'package:http/http.dart' as http;

// import 'package:flutter/material.dart';
// import 'package:flutter_ls/newmodel1.dart';

// class result extends StatefulWidget {
//   @override
//   State<result> createState() => _resultState();
// }

// class _resultState extends State<result> {
//   List<Pro> prolist = [];
//   final  apiUrl = 'https://localshouts.com/api/search';
//   Future<List<Pro>> getallproduct(
//       String? category_name, String? subcategory_name) async {
//     String apiUrlWithParams = apiUrl;

//     if (category_name!= null) {
//       apiUrlWithParams += '?category_name=$category_name';

//       if (subcategory_name!= null) {
//         apiUrlWithParams += '&subcategory_name=$subcategory_name';
       
//       }
//     }

//     final response = await http.post(Uri.parse(apiUrlWithParams));

//     var result = jsonDecode(response.body.toString());
//     dynamic data = result['data']['productList'];
     

//     if (response.statusCode == 200) {
//     //   print(data);
//       for (Map i in data) {
//         //  print(data);
//         prolist.add(Pro.fromJson(i));
     
//       }
//       return prolist;
//     } else {
//       return prolist;
      
//     }
//    //  print(prolist);
      
//   }

//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getallproduct('fruits', 'apples'),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return Text('Loading');
//         } else {
//           return GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//           itemCount: prolist.length,
//            itemBuilder:(context, index) {
//             return Container(
//               width: 50,
//               height: 50,
//              // color: Colors.amber,
//               child: Column(
//                 children: [
//               Container(
//                 width: 220,height: 180,
//                 color: Colors.white,
//                  child: Image.network("$imgBaseUrl${prolist[index].id}/${prolist[index].mainImage.toString()}"),
//               ),
//               Container(
//                 width: 150,
//                 height: 25,
//                 color: Colors.white,
//                 child: Text(prolist[index].productName.toString(),style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),)
//               ),
//                  Container(
//                 width: 50,
//                 height: 25,
//                 color: Colors.white,
//                 child: Text(prolist[index].discountedPrice.toString(),style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),)
//               ),
//                 Container(
//                 width: 50,
//                 height: 25,
//                 color: Colors.white,
//                 child: Text(prolist[index].price.toString(),style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),)
//               ),
//                  Container(
//                 width: 100,
//                 height: 25,
//                 color: Colors.white,
//                 child: Text('Add to cart',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
//               ),
//                ],
//               ),
//             );
             
//            },);
//           // return ListView.builder(
//           //   scrollDirection: Axis.horizontal,
//           //   itemCount: prolist.length,
             
//           //   itemBuilder:(context, index) {
//           //     if(index < 4)
//           //     {
//           //      return Column(
//           //       children: [
//           //         // Image.network("$imgBaseUrl${prolist[index].id}/${prolist[index].mainImage.toString()}"),
//           //         //           Text(prolist[index].productName.toString()),
//           //         //           Text(prolist[index].discountedPrice.toString()),
//           //         //           Text(prolist[index].price.toString()),
//           //         //           Text('Add to cart'),
//           //         Container(width: 100,height: 100,color: Colors.black,),
                   
                  

//           //       ],
//           //      );
//           //     }
//           //     else
//           //     {
//           //       return Column(
//           //         children: [
//           //           // Image.network("$imgBaseUrl${prolist[index].id}/${prolist[index].mainImage.toString()}"),
//           //           //         // Text(prolist[index].productName.toString()),
//           //           //         // Text(prolist[index].discountedPrice.toString()),
//           //           //         // Text(prolist[index].price.toString()),
//           //           //         Text('Add to cart'),
//           //            Container(width: 100,height: 100,color: Colors.green,),
//           //            SizedBox(width: 10,)
//           //         ],
//           //       );
               
//           //     }
            
//           // },);
          
       



//           // return ListView.builder(
//           //         itemCount: prolist.length,
//           //         itemBuilder:(context, index) {
//           //         //  return Text(modellist[index].title.toString());
//           //         return Card(
//           //           child: Column(
//           //             mainAxisAlignment: MainAxisAlignment.start,
//           //             children: [
                 
//           //                   // Image.network("$imgBaseUrl${prolist[index].id}/${prolist[index].mainImage.toString()}"),
//           //                   // Text(prolist[index].productName.toString()),
//           //                   // Text(prolist[index].discountedPrice.toString()),
//           //                   // Text(prolist[index].price.toString()),
//           //                   Text('Add to cart'),
//           //              // Text(prolist[index].id.toString()),
                        
//           //              // Image.network("$imgBaseUrl${prolist[index].id}/${prolist[index].mainImage.toString()}")


//           //             ],
//           //           ),
//           //         );
          
                  
//           //       },);
//         }
//       },
//     );
//   }
// }

