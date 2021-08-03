import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getDate() async {
    String name = await Future.delayed(Duration(seconds: 2), () {
     print('(1) after 2 second');
     return "Mark Ng";
    });

    String age = await Future.delayed(Duration(seconds: 2), () {
      print('(2) after 2 second');
      return "25";
    });

    print('$name - $age');
  }

  @override
  void initState() {
    super.initState();
    getDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Location Page'),
      );
  }
}
