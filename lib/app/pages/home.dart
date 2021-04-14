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
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFFFBFBFD),
              child: Image.asset(
                './lib/assets/images/logo.png',
              ),
            ),
            title: Text('Asia'),
            subtitle: Text('45 países'),
            trailing: Icon(Icons.arrow_right_outlined),
            onTap: () {
              print('ok');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFFFBFBFD),
              child: Image.asset(
                './lib/assets/images/logo.png',
              ),
            ),
            title: Text('North Ameria'),
            subtitle: Text('22 países'),
            onTap: () {
              print('ok');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFFFBFBFD),
              child: Image.asset(
                './lib/assets/images/logo.png',
              ),
            ),
            title: Text('South America'),
            subtitle: Text('22 países'),
            onTap: () {
              print('ok');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFFFBFBFD),
              child: Image.asset(
                './lib/assets/images/logo.png',
              ),
            ),
            title: Text('Europe'),
            subtitle: Text('45 países'),
            onTap: () {
              print('ok');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFFFBFBFD),
              child: Image.asset(
                './lib/assets/images/logo.png',
              ),
            ),
            title: Text('Africa'),
            subtitle: Text('22 países'),
            onTap: () {
              print('ok');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFFFBFBFD),
              child: Image.asset(
                './lib/assets/images/logo.png',
              ),
            ),
            title: Text('Australia/Oceania'),
            subtitle: Text('22 países'),
            onTap: () {
              print('ok');
            },
          ),
        ],
      ),
    );
  }
}
