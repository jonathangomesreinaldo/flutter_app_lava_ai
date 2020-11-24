import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterapplavaai/pages/gmaps.dart';
import 'package:flutterapplavaai/pages/homescreen.dart';
import 'package:flutterapplavaai/pages/myorderspage.dart';
import 'package:flutterapplavaai/pages/settings.dart';
import 'package:flutterapplavaai/pages/userprofile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 131, 249, 1),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 2;
  final HomeScreen _myHomePage = HomeScreen();
  final GMap _gMap = new GMap();
  final UserProfilePage _loginPage = new UserProfilePage();
  final MyOrdersPage _myOrdersPage = new MyOrdersPage();
  final SettingsPage _settingsPage = new SettingsPage();

  Widget _showPage = new HomeScreen();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _settingsPage;
        break;
      case 1:
        return _loginPage;
        break;
      case 2:
        return _myHomePage;
        break;
      case 3:
        return _gMap;
        break;
      case 4:
        return _myOrdersPage;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'Página não encontrada =/',
              style: new TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromRGBO(0, 100, 190, 1),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        height: 55,
        items: <Widget>[
          Icon(Icons.settings,
              size: 23, color: Color.fromRGBO(65, 170, 245, 1)),
          Icon(Icons.person, size: 23, color: Color.fromRGBO(65, 170, 245, 1)),
          Icon(Icons.home, size: 23, color: Color.fromRGBO(65, 170, 245, 1)),
          Icon(Icons.map, size: 23, color: Color.fromRGBO(65, 170, 245, 1)),
          Icon(Icons.shopping_basket,
              size: 23, color: Color.fromRGBO(65, 170, 245, 1)),
        ],
        animationDuration: Duration(milliseconds: 550),
        index: 2,
        animationCurve: Curves.linearToEaseOut,
        onTap: (int tappedIndex) {
          setState(() {
            debugPrint("O Index atual é $tappedIndex");
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          //child: Text(_pageIndex.toString(), textScaleFactor: 10.0,),
          child: _showPage,
        ),
      ),
    );
  }
}
