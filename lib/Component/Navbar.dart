import 'package:flutter/material.dart';
import '../Page/Profile.dart';

/*
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Scanner',
      style: optionStyle,
    ),
    Text(
      'Promotion',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    /*if (index== 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context)=>const Scaner())
      );
    }
    if (index== 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context)=>const Promotion())
      );
    }
    if (index== 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context)=>const Setting())
      );
    } */
    if (index== 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context)=> Profile())
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_outlined),
            label: 'Scaner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Promotion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}*/