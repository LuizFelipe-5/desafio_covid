import 'package:desafio_covid/app/controllers/continents_controller.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ContinentController();

  _success(BuildContext context) {
    return ListView.builder(
        itemCount: controller.continents.length,
        itemBuilder: (_, index) {
          var continent = controller.continents[index];
          var countryIcon = '';
          switch (continent.continent) {
            case 'Asia':
              countryIcon = 'asia';
              break;
            case 'North America':
              countryIcon = 'america';
              break;
            case 'South America':
              countryIcon = 'america';
              break;
            case 'Africa':
              countryIcon = 'africa';
              break;
            case 'Europe':
              countryIcon = 'europe';
              break;
            case 'Australia/Oceania':
              countryIcon = 'oceania';
              break;
            default:
              break;
          }
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFBFBFD),
                child: Image.asset(
                  'assets/images/$countryIcon.png',
                ),
              ),
              title: Text(continent.continent),
              subtitle: Text('${continent.countries.length} países'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/tabContinents', arguments: {
                  continent.continent,
                });
              },
            ),
          );
        });
  }

  _error() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          controller.start();
        },
        child: Text('Tentar'),
      ),
    );
  }

  _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  _start() {
    return Container(
      width: 0.0,
      height: 0.0,
    );
  }

  stateManagement(ContinentState state) {
    switch (state) {
      case ContinentState.start:
        return _start();
      case ContinentState.loading:
        return _loading();
      case ContinentState.error:
        return _error();
      case ContinentState.success:
        return _success(context);
      default:
        return _start();
    }
  }

  @override
  void initState() {
    super.initState();

    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!Navigator.canPop(context)) return Future.value(false);

        return Future.value(true);
      },
      child: Scaffold(
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
              'assets/images/logo.png',
              height: 29,
              width: 30,
            ),
          ),
          backgroundColor: Color(0xFFFBFBFD),
        ),
        backgroundColor: Color(0xFFF3F4F9),
        body: AnimatedBuilder(
          animation: controller.state,
          builder: (context, child) {
            return stateManagement(controller.state.value);
          },
        ),
      ),
    );
  }
}
