import 'package:ind_techubru/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:ind_techubru/screens/scan.dart';

class MyService extends StatefulWidget {
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  // Explicit

  Color myColor = Colors.blue.shade900;
  double mySizeIcon = 36.0;
  double h2 = 18.0;

  // Method
  Widget showLogo() {
    return Container(
      width: 80.0,
      height: 80.0,
      child: Image.asset(
        ('images/smo.png'),
      ),
    );
  }

  Widget showAppName() {
    return Text(
      'Tnd-Tech Ubru',
      style: TextStyle(
        fontSize: 30.0,
        color: myColor,
        fontFamily: 'IMFellDWPicaSC',
      ),
    );
  }

  Widget showLogin() {
    return Text(
      'Login by ... ',
      style: TextStyle(fontSize: 16.0, color: Colors.white),
    );
  }

  Widget signOutMenu() {
    return ListTile(
      leading: Icon(
        Icons.cached,
        size: mySizeIcon,
      ),
      title: Text(
        'Sign Out',
        style: TextStyle(fontSize: h2),
      ),
      onTap: () {
        processSignOut();
      },
    );
  }

  Future<void> processSignOut() async {
    MaterialPageRoute materialPageRoute =
        MaterialPageRoute(builder: (BuildContext context) => Home());
    Navigator.of(context)
        .pushAndRemoveUntil(materialPageRoute, (Route<dynamic> route) => false);
  }

  Widget signScanMenu() {
    return ListTile(
      leading: Icon(
        Icons.cached,
        size: mySizeIcon,
      ),
      title: Text(
        'Sign Scan',
        style: TextStyle(fontSize: h2),
      ),
      onTap: () {
        processSignScan();
      },
    );
  }

  Future<void> processSignScan() async {
    MaterialPageRoute materialPageRoute =
        MaterialPageRoute(builder: (BuildContext context) => Scan());
    Navigator.of(context)
        .pushAndRemoveUntil(materialPageRoute, (Route<dynamic> route) => false);
  }

  Widget myHeadDrawer() {
    return DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/it.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          showLogo(),
          showAppName(),
          showLogin(),
        ],
      ),
    );
  }

  Widget myDrewerMenu() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          myHeadDrawer(),
          signOutMenu(),
          signScanMenu(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Activities'),
      ),
      drawer: myDrewerMenu(),
    );
  }
}
