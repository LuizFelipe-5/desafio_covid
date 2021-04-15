import 'package:flutter/material.dart';

class CountryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('France'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
