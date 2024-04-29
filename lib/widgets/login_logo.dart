import 'package:flutter/material.dart';
import 'package:flutter_ls/connection/service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class login_logo extends StatefulWidget {
  @override
  State<login_logo> createState() => _login_logoState();
}

class _login_logoState extends State<login_logo> {
  Services service = Services();
  TextEditingController nameornumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  elevation: 16,
                  child: Container(
                    width: 480,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 480,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            color: Color.fromARGB(255, 15, 35, 51),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: 195,
                              ),
                              Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          width: 480,
                          height: 290,
                          child: Column(
                            children: [
                              Container(
                                width: 420,
                                height: 60,
                                child: TextFormField(
                                    decoration: InputDecoration(
                                  labelText: "Email ID or Mobile",
                                  labelStyle: TextStyle(letterSpacing: 1.3),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: const Color.fromRGBO(158, 158, 158, 1))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 2)),
                                  hintStyle: TextStyle(letterSpacing: 1.3),
                                )),
                              ),
                              Container(
                                width: 420,
                                height: 20,
                                child: Text('Forgot Password?',style: TextStyle(color: Colors.blue),),
                              ),
                              Container(
                                width: 420,
                                height: 50,
                                  decoration: BoxDecoration(
                                           
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                                   child: Row(
                                                    children: [
                                                      SizedBox(width: 330,),
                                                        Container(
                                width: 90,
                                height: 40,
                                  decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 255, 94, 0),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                                   child: Center(
                                              child: Text(
                                            "NEXT",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                              ),
                                                    ],
                                                   )
                              ),
                              Container(
                                width: 420,
                                height: 100,
                              
                                child: Column(
                                  children: [
                                    Container(width: 320,height: 40,color: Colors.white,
                                    child: Row(
                                      children: [
                                        Text("New to LocalShouts.com"),
                                        SizedBox(width: 3,),
                                        Text("Create A Free Account.",style: TextStyle(color: Colors.blue),),
                                      ],
                                    ),
                                    ),
                                    Text("or login using") ,
                                  ],
                                ),
                              ),
                              Container(
                                width: 420,
                                height: 50,
                              
                                child: Row(
                                 
                                  children: [
                                    SizedBox(width: 150,),
                                    Container(width: 40,height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    
                                    ),
                                    child: Image(image: NetworkImage('https://localshouts.com/react/assets/images/google.png')),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(width: 40,height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                     
                                    ),
                                    child: Image(image: NetworkImage('https://localshouts.com/react/assets/images/facebook.png')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          width: 25,
          height: 25,
          child: Icon(
            FontAwesomeIcons.user,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }
}
