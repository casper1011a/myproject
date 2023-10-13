import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

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
