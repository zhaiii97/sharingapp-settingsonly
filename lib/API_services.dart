import 'dart:convert';
import 'package:flutter_file_sharing_app/app/dummyData/Usermodel.dart';
import 'package:http/http.dart' as http;


class FetchUser {
  var data = [];
  List<SenderList> results = [];
  String fetchurl = "https://jsonplaceholder.typicode.com/users";

  Future <List<SenderList>> getUserList({String? query}) async{

    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try {
      if(response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => SenderList.fromJson(e)).toList();
        if (query != null) {
          results = results.where((element) => element.name!.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
        print('API Error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}