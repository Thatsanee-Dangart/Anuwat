import 'package:flutter/material.dart';
import 'package:ind_techubru/screens/my_service.dart';



class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  // Explicit
  Color myColor = Colors.blue.shade900;

  // Method

  Widget mySizebox() {
    return SizedBox(
      width: 5.0,
      height: 16.0,
    );
  }

  Widget showButton() {
    return Container(
      margin: EdgeInsets.only(left: 5.0, right: 5.0),
      child: Row(
        children: <Widget>[
          signInButton(),
          mySizebox(),
          signIngButton(),
         
        ],
      ),
    );
  }

  Widget signInButton() {
    return Expanded(
      child: RaisedButton(
        color: myColor,
        child: Text(
          'ScanQR-Code',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          print('You Click SingUp');

          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => MyService());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
    );
  }

   Widget signIngButton() {
    return Expanded(
      child: RaisedButton(
        color: myColor,
        child: Text(
          'Student Code',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          print('You Click SingUp');

          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => MyService());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
    );
  }
  
  Widget showAuthen() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/wa.jpg'), fit: BoxFit.cover),
      ),
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: Color.fromRGBO(255, 255, 255, 0.5),
        width: 300.0,
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              showLogo(),
              showName(),
              showButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget showLogo() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 90.0,
        height: 90.0,
        child: Image.asset('images/smo.png'),
      ),
    );
  }

  Widget showName() {
    return ListTile(
      title: Text(
        'Ind Tech Ubru',
        style: TextStyle(
          fontSize: 35.0,
          color: myColor,
          fontFamily: 'IMFellDWPicaSC',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            showAuthen(),
          ],
        ),
      ),
    );
  }
}
