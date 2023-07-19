import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List results = [];
  getResponse() async {
    http.Response response = await http.get(Uri.parse(
        'https://03c0-175-110-9-184.ngrok-free.app/angle_delivery/test.php'));
    if (response.statusCode == 200) {
      print(jsonDecode(response.body)['data']);
      setState(() {
        results = jsonDecode(response.body)['data'];
      });
    } else {
      throw Exception('error');
    }
  }

  @override
  void initState() {
    super.initState();
    getResponse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              var item = results[index];
              return Text(item['user_email']);
            }));
  }
}
