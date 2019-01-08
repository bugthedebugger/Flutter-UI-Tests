import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

 class getData{
    fetchData() async {
    var result = await get('https://jsonplaceholder.typicode.com/photos');
    print(result.body);
  }
}