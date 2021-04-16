import 'package:desafio_covid/app/shared/theme.dart';
import 'package:flutter/material.dart';

class TabContinents extends StatefulWidget {
  //final gray = Color(0xFF969AA8);

  @override
  _TabContinentsState createState() => _TabContinentsState();
}

class _TabContinentsState extends State<TabContinents> {
  @override
  Widget build(BuildContext context) {
    final String args =
        ModalRoute.of(context).settings.arguments.toString() ?? 'Continente';
    String novaArgs = args.substring(1, (args.length - 1));

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
              novaArgs,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Text('Total'),
                                  Column(
                                    children: [
                                      Text(
                                        'Total de casos',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text('123213'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Ativos',
                                            style: TextStyle(color: gray),
                                          ),
                                          Text(
                                            '27%',
                                            style: TextStyle(
                                              color: Color(0xFF4461C2),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Curados',
                                            style: TextStyle(color: gray),
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
                                            style: TextStyle(color: gray),
                                          ),
                                          Text(
                                            '27%',
                                            style: TextStyle(
                                              color: Color(0xFFFF2665),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Column(
                              children: [
                                Text('Hoje'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Casos',
                                          style: TextStyle(color: gray),
                                        ),
                                        Text(
                                          '+ 12132',
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Óbitos',
                                          style: TextStyle(color: gray),
                                        ),
                                        Text(
                                          '+ 1111',
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
                          Card(
                            child: Column(
                              children: [
                                Text('Testes'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Realizados',
                                          style: TextStyle(color: gray),
                                        ),
                                        Text('12132'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'População',
                                          style: TextStyle(color: gray),
                                        ),
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

  Widget buildListView(BuildContext context) {
    final itens = List<String>.generate(10000, (index) => 'Item count: $index');

    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (_, index) {
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
