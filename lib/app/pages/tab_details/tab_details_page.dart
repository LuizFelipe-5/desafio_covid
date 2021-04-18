import 'package:desafio_covid/app/shared/theme.dart';
import 'package:flutter/material.dart';

import '../home/widgets/home_data.dart';

class TabContinents extends StatefulWidget {
  @override
  _TabContinentsState createState() => _TabContinentsState();
}

class _TabContinentsState extends State<TabContinents> {
  @override
  Widget build(BuildContext context) {
    final HomeData args = ModalRoute.of(context).settings.arguments as HomeData;

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
              args.continent,
              style: Theme.of(context).textTheme.subtitle1,
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.5,
                        horizontal: 14.5,
                      ),
                      child: Column(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Total',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  spacing32,
                                  Column(
                                    children: [
                                      Text(
                                        'Total de casos',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      spacing5,
                                      Text(
                                        args.cases.toString(),
                                        style: text16Black,
                                      ),
                                    ],
                                  ),
                                  spacing32,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Ativos',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          spacing8,
                                          Text(
                                            ((args.active * 100) / args.cases)
                                                    .toStringAsFixed(0) +
                                                '%',
                                            style: text22Blue,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Curados',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          spacing8,
                                          Text(
                                            ((args.recovered * 100) /
                                                        args.cases)
                                                    .toStringAsFixed(0) +
                                                '%',
                                            style: text22Green,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Óbitos',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          spacing8,
                                          Text(
                                            ((args.deaths * 100) / args.cases)
                                                    .toStringAsFixed(0) +
                                                '%',
                                            style: text22Red,
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Hoje',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  spacing32,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Casos',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          spacing5,
                                          Text(
                                            '+ ' + args.todayCases.toString(),
                                            style: text16Black,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Óbitos',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          spacing5,
                                          Text(
                                            '+ ' + args.todayDeaths.toString(),
                                            style: text16Red,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Testes',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  spacing27,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Realizados',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          spacing5,
                                          Text(
                                            args.tests.toString(),
                                            style: text16Black,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'População',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          spacing5,
                                          Text(
                                            args.population.toString(),
                                            style: text16Black,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
                child: buildListView(context, args),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListView(BuildContext context, HomeData args) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.5,
        horizontal: 14.5,
      ),
      child: ListView.builder(
        itemCount: args.countries.length,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              title: Text('${args.countries[index]}'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14.0,
                color: Color(
                  0xFF969AA8,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/countryDetails',
                    arguments: args.countries[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
