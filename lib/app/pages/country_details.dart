import 'package:flutter/material.dart';

class CountryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFCFCFD),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF1E2243),
          ),
          onTap: () {
            Navigator.pop(context, '/tabContinents');
          },
        ),
        title: Text(
          'France',
          style: TextStyle(
            color: Color(0xFF1E2243),
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFF3F4F9),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Text('France'),
                  Column(
                    children: [
                      Text('Total de casos'),
                      Text('1231321'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('Ativos'),
                          Text('27%'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Curados'),
                          Text('27%'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Óbitos'),
                          Text('27%'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}
