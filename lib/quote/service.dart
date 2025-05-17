


import 'dart:convert';

import 'package:firstapp/quote/quote.dart';
import 'package:http/http.dart' as http;

Future <List <Quote>> fetchQuote()async{ //data gya mn el server bst5dmlaha future

  final response =await http.get(Uri.parse("https://api.api-ninjas.com/v1/quotes"),
  headers: {
    'X-Api-Key': 'XFmV4v4U1ktQnBpRFCdAVQ==FdCctGF9LNng7h5C'
  },
  );
  if(response.statusCode ==200){
    List<dynamic> data = jsonDecode(response.body) ; //hyb2a 3ndy list mn el map
    return data.map((json)=>Quote.fromJson(json)).toList();
  }

  throw Exception("Failed to load data");
} 