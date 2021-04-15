import 'package:flutter/material.dart';

class TabContinents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFCFCFD),
            bottom: TabBar(
              unselectedLabelColor: Color(0xFF969AA8),
              labelColor: Color(0xFF4461C2),
              tabs: [
                Tab(
                  text: 'Detalhes',
                ),
                Tab(
                  text: 'Países',
                ),
              ],
              indicatorColor: Color(0xFF4461C2),
            ),
            title: Text(
              'Europe',
              style: TextStyle(
                color: Color(0xFF1E2243),
                fontSize: 16,
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF1E2243),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Color(0xFFF3F4F9),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Text('Total'),
                              Column(
                                children: [
                                  Text('Total de casos'),
                                  Text('123213'),
                                ],
                              ),
                              Row(
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
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Text('Hoje'),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Casos'),
                                      Text('+12132'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Óbitos'),
                                      Text('+1111'),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Text('Testes'),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Realizados'),
                                      Text('12132'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('População'),
                                      Text('1213132131'),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFF3F4F9),
                child: buildListView(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildListView(BuildContext context) {
    final itens = List<String>.generate(10000, (index) => 'Item count: $index');

    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('${itens[index]}'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/countryDetails');
            },
          ),
        );
      },
    );
  }
}
