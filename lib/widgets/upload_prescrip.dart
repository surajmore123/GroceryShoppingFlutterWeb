import 'package:flutter/material.dart';
import 'package:flutter_ls/forms/upload_prescri_form.dart';

class upload_prescrip extends StatelessWidget {
  Widget build(BuildContext context) {
    return
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => prescriptionform()));
          },
          child: Container(
                  width: 170,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.medical_services_sharp,
                        color: Colors.white,
                      ),
                      Center(
                          child: Text("Upload Prescription",
                              style: TextStyle(
                                color: Colors.white,
                              )))
                    ],
                  ),
                ),
        );
  }
}
