import 'dart:convert';

import 'package:http/http.dart' as http;


class APIService{

  static final url = Uri.parse("https://api.openai.com/v1/images/generations");

  static final apiKey = "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";


  static final header = {
    "Content-Type":"application/json",
    "Authorization":"Bearer $apiKey"
  };


  static generateImage(String text, String size)async{

    var response = await http.post(
      url,
      headers: header,
      body: jsonEncode({
        "prompt":text,
        "n":1,
        "size":size
      }),  
    );
    if(response.statusCode==200){
      var data = jsonDecode(response.body.toString());
      return data['data'][0]['url'];
    }else{
      print("Error");
    }
  
  }


}