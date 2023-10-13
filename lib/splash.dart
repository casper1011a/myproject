import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_application_2/mymain.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _mymaineState();
}


class _mymaineState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     Timer(Duration(seconds: 5), ()=> Navigator.of(context).push(MaterialPageRoute(builder:(context) => mymain(),))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: double.infinity,
          height: 250,
          
          decoration: BoxDecoration(gradient:LinearGradient(colors:[Colors.blue,Colors.green]),borderRadius: BorderRadius.only(bottomRight: Radius.circular(500))),
        ),
        CircleAvatar(child: Icon(Icons.home),radius: 50),
        Text("rtgt",style: TextStyle(fontSize: 20),),
          
        Container(
          
          width: double.infinity,
          height: 250,
          
          decoration: BoxDecoration(color: Color.fromARGB(255, 92, 4, 244),borderRadius: BorderRadius.only(topLeft: Radius.circular(500))),
        ),
      ],
    );
  }
}