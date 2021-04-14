import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid-19',
          style: TextStyle(
            color: Color(0xFF1E2243),
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        leading: CircleAvatar(
          backgroundColor: Color(0xFFFBFBFD),
          child: Image.asset(
            './lib/assets/images/logo.png',
            height: 29,
            width: 30,
          ),
        ),
        backgroundColor: Color(0xFFFBFBFD),
      ),
      backgroundColor: Color(0xFFF3F4F9),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFBFBFD),
                child: Image.asset(
                  './lib/assets/images/asia.png',
                ),
              ),
              title: Text('Asia'),
              subtitle: Text('45 países'),
              trailing: Image.asset('./lib/assets/images/arrow_right.svg'),
              onTap: () {
                print('ok');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFBFBFD),
                child: Image.asset(
                  './lib/assets/images/america.png',
                ),
              ),
              title: Text('North Ameria'),
              subtitle: Text('22 países'),
              trailing: Image.asset('./lib/assets/images/arrow_right.svg'),
              onTap: () {
                print('ok');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFBFBFD),
                child: Image.asset(
                  './lib/assets/images/america.png',
                ),
              ),
              title: Text('South America'),
              subtitle: Text('22 países'),
              trailing: Image.asset('./lib/assets/images/arrow_right.svg'),
              onTap: () {
                print('ok');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFBFBFD),
                child: Image.asset(
                  './lib/assets/images/europe.png',
                ),
              ),
              title: Text('Europe'),
              subtitle: Text('45 países'),
              trailing: Image.asset('./lib/assets/images/arrow_right.svg'),
              onTap: () {
                print('ok');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFBFBFD),
                child: Image.asset(
                  './lib/assets/images/africa.png',
                ),
              ),
              title: Text('Africa'),
              subtitle: Text('22 países'),
              trailing: Image.asset('./lib/assets/images/arrow_right.svg'),
              onTap: () {
                print('ok');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFBFBFD),
                child: Image.asset(
                  './lib/assets/images/oceania.png',
                ),
              ),
              title: Text('Australia/Oceania'),
              subtitle: Text('22 países'),
              trailing: Image.asset('./lib/assets/images/arrow_right.svg'),
              onTap: () {
                print('ok');
              },
            ),
          ),
        ],
      ),
    );
  }
}
