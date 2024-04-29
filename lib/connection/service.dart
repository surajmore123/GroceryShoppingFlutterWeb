import 'dart:convert';

import 'package:http/http.dart' as http;

class Services
{
  Future<http.Response> saveUser(String name,String mnumber,String address,String city,String pin) async
  {
    var uri =  Uri.parse("http://localhost:8080/save");


 Map<String,String> headers = {"Content-Type":"application/json"};

 Map data = {
  'name' : '$name',
  'mnumber': '$mnumber',
  'address': '$address',
  'city' : '$city',
  'pin' : '$pin',
 };

    var body = json.encode(data);
    var response = await http.post(uri,headers:headers , body:body );

    print("${response.body}");
    return response;

	
  }
}