import 'package:desafio_covid/app/controllers/countries_controller.dart';
import 'package:flutter/material.dart';

class CountryDetails extends StatefulWidget {
  @override
  _CountryDetailsState createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  final controller = CountryController();

  final gray = Color(0xFF969AA8);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final String args = ModalRoute.of(context).settings.arguments ?? 'País';
      controller.start(args);
    });
  }

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
          ModalRoute.of(context).settings.arguments ?? 'País',
          style: TextStyle(
            color: Color(0xFF1E2243),
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFF3F4F9),
        child: ValueListenableBuilder<CountryState>(
            valueListenable: controller.state,
            builder: (context, state, widget) {
              if (state == CountryState.start ||
                  state == CountryState.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state == CountryState.error) {
                return Center(
                  child: Text('erro'),
                );
              }
              return Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 73,
                    left: 16,
                    right: 16,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 122),
                        child: Column(
                          children: [
                            Text(controller.countries.country),
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
                                      style:
                                          TextStyle(color: Color(0xFF4461C2)),
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
                  ),
                  Positioned(
                    top: 30,
                    child: Center(
                      child: Image.asset(
                        'assets/images/france.png',
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
