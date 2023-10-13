import 'package:flutter/material.dart';
import 'package:flutter_application_2/mymain.dart';

class culc extends StatefulWidget {
  const culc({super.key});

  @override
  State<culc> createState() => _culcState();
}

class _culcState extends State<culc> {
  TextEditingController r = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: r,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newMethod('1', r),
                newMethod('2', r),
                newMethod('3', r),
                newMethod('/', r),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newMethod('4', r),
                newMethod('5', r),
                newMethod('6', r),
                newMethod('*', r),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newMethod('7', r),
                newMethod('8', r),
                newMethod('9', r),
                newMethod('-', r),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newMethod('.', r),
                newMethod('0', r),
                newMethod('00', r),
                newMethod('+', r),
              ],
            ),
          IconButton(onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => mymain(),));
          }, icon: Icon(Icons.home))
          ],
        ),
      ),
    );
  }

  Padding newMethod(String a, TextEditingController r) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(fixedSize: Size(100, 90)),
        onPressed: () {
          setState(() {
            r.text += a; 
          });
        },
        child: Text(a),
      ),
    );
  }
}