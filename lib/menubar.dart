import 'package:flutter/material.dart';
import 'package:flutter_ls/HoverAll/onHover.dart';
import 'package:flutter_ls/nevigapages/baby_care_all.dart';
import 'package:flutter_ls/nevigapages/baby_care_himalaya.dart';
import 'package:flutter_ls/nevigapages/baby_care_johnson.dart';
import 'package:flutter_ls/nevigapages/cooking_e_atta.dart';
import 'package:flutter_ls/nevigapages/cooking_e_grains.dart';
import 'package:flutter_ls/nevigapages/cooking_e_oil.dart';
import 'package:flutter_ls/nevigapages/cooking_e_salt.dart';
import 'package:flutter_ls/nevigapages/cookung_e_all.dart';
import 'package:flutter_ls/nevigapages/fruit_apple_page.dart';
import 'package:flutter_ls/nevigapages/fruit_mango_page.dart';
import 'package:flutter_ls/nevigapages/fruits_all_page.dart';
import 'package:flutter_ls/nevigapages/houshold_all.dart';
import 'package:flutter_ls/nevigapages/houshold_detergent.dart';
import 'package:flutter_ls/nevigapages/houshold_dishwash.dart';
import 'package:flutter_ls/nevigapages/houshold_toilet.dart';
import 'package:flutter_ls/nevigapages/more_beverage.dart';
import 'package:flutter_ls/nevigapages/more_diwali.dart';
import 'package:flutter_ls/nevigapages/more_dry_f.dart';
import 'package:flutter_ls/nevigapages/more_vegitable.dart';
import 'package:flutter_ls/nevigapages/packaged_f_all.dart';
import 'package:flutter_ls/nevigapages/packaged_f_dairy.dart';
import 'package:flutter_ls/nevigapages/packaged_f_noodle.dart';
import 'package:flutter_ls/nevigapages/packaged_f_sauce.dart';
import 'package:flutter_ls/nevigapages/person_c_all.dart';
import 'package:flutter_ls/nevigapages/personal_c_facewa.dart';
import 'package:flutter_ls/nevigapages/personal_c_hair.dart';
import 'package:flutter_ls/nevigapages/personal_c_soaps.dart';
import 'package:flutter_ls/nevigapages/personal_c_tooth.dart';
import 'package:flutter_ls/widgets/home.dart';


class menubar extends StatefulWidget {
  @override
  State<menubar> createState() => _menubarState();
}

class _menubarState extends State<menubar> {
  var selectedItem = '';

  bool isHovered = false;

  Widget build(BuildContext context) {
        final BorderSide primarySide2 = BorderSide(width: 0.20, color: Colors.grey);
    return Container(
      child: Container(
        width: double.infinity,
        height: 42,
        color: Colors.white,
        child: Card(
          elevation: 12,
        //  shadowColor: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              onHover(builder: (isHovered) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                    //        builder: (context) => MyHomePage(),
                      builder: (context) => home(),
                          ));
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black),
                    ));
              }),
              PopupMenuButton(
                offset: Offset(0, 30),
                constraints: BoxConstraints.tightFor(width: 270),
                
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                  //   print(value);
                  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      textStyle: TextStyle(),
                      
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => fruit_all_page(),
                                ));
                          },

                          child: SizedBox(
                            child: Text("All ",
                                style: TextStyle(
                                    color:
                                        isHovered ? Colors.red : Colors.black)),
                          ),
               
                        );
                      }),
                    ),
                    PopupMenuItem(child: onHover(builder: (isHovered) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => fruit_apple_page(),
                              ));
                        },
                        child: Text("Apples ",
                            style: TextStyle(
                                color: isHovered ? Colors.red : Colors.black)),
                      );
                    })),
                    PopupMenuItem(child: onHover(builder: (isHovered) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => fruit_mango_page(),
                              ));
                        },
                        child: Text("Mangoes ",
                            style: TextStyle(
                                color: isHovered ? Colors.red : Colors.black)),
                      );
                    }))
                  ];
                },
                child: onHover(builder: (isHovered) {
                  return Text("Fruits >",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black));
                }),
              ),

              PopupMenuButton(
                offset: Offset(0, 30),
                constraints: BoxConstraints.tightFor(width: 270),
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                  print(value);
                  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => baby_care_all_page(),
                                ));
                          },
                          child: Text("All ",
                              style: TextStyle(
                                  color:
                                      isHovered ? Colors.red : Colors.black)),
                        );
                      }),
                    ),
                    PopupMenuItem(
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      baby_care_himalaya_page(),
                                ));
                          },
                          child: Text("Himalaya-Products ",
                              style: TextStyle(
                                  color:
                                      isHovered ? Colors.red : Colors.black)),
                        );
                      }),
                    ),
                    PopupMenuItem(
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        baby_care_johnson_page(),
                                  ));
                            },
                            child: Text(
                              "Johnsons-Baby",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    )
                  ];
                },
                child: onHover(builder: (isHovered) {
                  return Text("Baby Care >",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black));
                }),
              ),
              PopupMenuButton(
                offset: Offset(0, 30),
                constraints: BoxConstraints.tightFor(width: 270),
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                  print(value);
                  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => cooking_e_all_page(),
                                  ));
                            },
                            child: Text(
                              "All",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => cooking_e_salt_page(),
                                  ));
                            },
                            child: Text(
                              "Salt-Spices-And-Masala",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => cooking_e_oil_page(),
                                  ));
                            },
                            child: Text(
                              "Oil-Ghee",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //      child: Text("Atta-And-Flours"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => cooking_e_atta_page(),
                                  ));
                            },
                            child: Text(
                              "Atta-And-Flours",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //  child: Text(""),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        cooking_e_grains_page(),
                                  ));
                            },
                            child: Text(
                              "Grains-Cereals-And-Pulses",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                  ];
                },
                child: onHover(builder: (isHovered) {
                  return Text("Cooking-Essentials > >",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black));
                }),
              ),
              PopupMenuButton(
                offset: Offset(0, 30),
                constraints: BoxConstraints.tightFor(width: 270),
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                  print(value);
                  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      //  child: Text("All"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => personal_c_all_page(),
                                  ));
                            },
                            child: Text(
                              "All",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      // child: Text("Soaps-Handwashes"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        personal_c_soaps_page(),
                                  ));
                            },
                            child: Text(
                              "Soaps-Handwashes",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //   child: Text("Hair-Care"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        personal_c_hair_page(),
                                  ));
                            },
                            child: Text(
                              "Hair-Care",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //   child: Text("Facewash"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        personal_c_facewas_page(),
                                  ));
                            },
                            child: Text(
                              "Facewash",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //    child: Text("Tooth-Paste"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        personal_c_tooth_page(),
                                  ));
                            },
                            child: Text(
                              "Tooth-Paste",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                  ];
                },
                //Personal Care
                child: onHover(builder: (isHovered) {
                  return Text("Personal Care >",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black));
                }),
              ),
              PopupMenuButton(
                offset: Offset(0, 30),
                constraints: BoxConstraints.tightFor(width: 270),
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                  print(value);
                  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      //          child: Text("All"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => household_all_page(),
                                  ));
                            },
                            child: Text(
                              "All",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //   child: Text("Detergent"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        household_detergent_page(),
                                  ));
                            },
                            child: Text(
                              "Detergent",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //    child: Text(""),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        household_dishwash_page(),
                                  ));
                            },
                            child: Text(
                              "Dishwashing-Supplies",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //    child: Text("Toilet-And-Floor-Cleaners"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        household_toilet_page(),
                                  ));
                            },
                            child: Text(
                              "Toilet-And-Floor-Cleaners",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    )
                  ];
                },
                //Household & Pets
                child: onHover(builder: (isHovered) {
                  return Text("Household & Pets >",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black));
                }),
              ),
              PopupMenuButton(
                       offset: Offset(0, 30),
                constraints: BoxConstraints.tightFor(width: 270),
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                  print(value);
                  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      //   child: Text("All"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => packaged_f_all_page(),
                                  ));
                            },
                            child: Text(
                              "All",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //       child: Text("Sauces-And-Spreads"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        packaged_f_sauces_page(),
                                  ));
                            },
                            child: Text(
                              "Sauces-And-Spreads",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //    child: Text("Noodles"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        packaged_f_noodle_page(),
                                  ));
                            },
                            child: Text(
                              "Noodles",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //      child: Text("Dairy-Products"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        packaged_f_dairy_page(),
                                  ));
                            },
                            child: Text(
                              "Dairy-Products",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    )
                  ];
                },
                //Packaged Foods

                child: onHover(builder: (isHovered) {
                  return Text("Packaged Foods >",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black));
                }),
              ),
              PopupMenuButton(
                       offset: Offset(0, 30),
                constraints: BoxConstraints.tightFor(width: 270),
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                  print(value);
                  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      //     child: Text("Vegetable"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => more_vegitable_page(),
                                  ));
                            },
                            child: Text(
                              "Vegetable",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //       child: Text("Dry-Fruits"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => more_dry_f_page(),
                                  ));
                            },
                            child: Text(
                              "Dry-Fruits",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //      child: Text("Diwali Special"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => more_diwali_page(),
                                  ));
                            },
                            child: Text(
                              "Diwali Special",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                    PopupMenuItem(
                      //    child: Text("Beverages"),
                      child: onHover(builder: (isHovered) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => more_beverage_page(),
                                  ));
                            },
                            child: Text(
                              "Beverages",
                              style: TextStyle(
                                  color: isHovered ? Colors.red : Colors.black),
                            ));
                      }),
                    ),
                  ];
                },

                //More
                child: onHover(builder: (isHovered) {
                  return Text("More >",
                      style: TextStyle(
                          color: isHovered ? Colors.red : Colors.black));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
