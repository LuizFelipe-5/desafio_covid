import 'package:flutter/material.dart';

class CountryDetails extends StatelessWidget {
  final gray = Color(0xFF969AA8);

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
            Image.asset('./lib/assets/images/france.png'),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Card(
                child: Column(
                  children: [
                    Text('France'),
                    Column(
                      children: [
                        Text(
                          'Total de casos',
                          style: TextStyle(
                            color: gray,
                          ),
                        ),
                        Text(
                          '1231321',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Ativos',
                              style: TextStyle(
                                color: gray,
                              ),
                            ),
                            Text(
                              '27%',
                              style: TextStyle(color: Color(0xFF4461C2)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Curados',
                              style: TextStyle(
                                color: gray,
                              ),
                            ),
                            Text(
                              '27%',
                              style: TextStyle(
                                color: Color(0xFF5FD92B),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Óbitos',
                              style: TextStyle(
                                color: gray,
                              ),
                            ),
                            Text(
                              '27%',
                              style: TextStyle(
                                color: Color(0xFFFF2665),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}
