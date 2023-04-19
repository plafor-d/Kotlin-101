import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

import 'Component/Navbar.dart';
import 'Page/Profile.dart';


void main() => runApp(const MyApp());

/*class ClockWidget extends StatelessWidget {
  const ClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Text(DateFormat('H:mm').format(DateTime.now()));
      },
    );
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}): super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Profile(),


          ),
          const SizedBox(
            width: double.maxFinite,
            height: 50,
          /*  child: MyStatefulWidget()*/
          )
        ],
      ),
    );
  }
}
