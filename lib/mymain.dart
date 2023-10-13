import 'package:flutter/material.dart';
import 'package:flutter_application_2/drawer.dart';
import 'package:flutter_application_2/home.dart';

class mymain extends StatelessWidget {
  const mymain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("dfkk")),
        ),
        body: home(),
        drawer: Mydrawer(),
      );
  }
}