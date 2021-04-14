import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Detalhes',
                ),
                Tab(
                  text: 'Países',
                ),
              ],
            ),
            title: Text('Europe'),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Column(
                  children: [
                    Card(),
                    Card(),
                  ],
                ),
              ),
              ListView()
            ],
          ),
        ),
      ),
    );
  }
}
