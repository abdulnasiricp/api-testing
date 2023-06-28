import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class APIScreen extends StatefulWidget {
  const APIScreen({super.key});

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  Map<String, dynamic>? DataMAp;
  Map<String, dynamic>? DoneDataMAp;
  Future HitApi() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users/2'));
    if (response.statusCode == 200) {
      setState(() {
        DataMAp = jsonDecode(response.body);
        DoneDataMAp = DataMAp!['data'];
        print(DoneDataMAp);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    HitApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('A P I Screen'),
        centerTitle: true,
      ),
      body: DoneDataMAp == null
          ? CircularProgressIndicator()
          : Center(
              child: Column(
                children: [
                  Text(
                    DoneDataMAp!['email'].toString(),
                  )
                ],
              ),
            ),
    );
  }
}
