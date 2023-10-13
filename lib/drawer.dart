import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/culc.dart';
import 'package:flutter_application_2/first_hw.dart';
import 'package:image_picker/image_picker.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
 File? image;
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
          children: [
            Container(
              color: Colors.blue,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      leading: IconButton(onPressed: () => show(context), icon: Icon(Icons.home)),
                      trailing: CircleAvatar(child: Icon(Icons.home)),
                    ),
                    // Row(children: [
                    //   CircleAvatar(radius: 30, child: Icon(Icons.home))
                    // ]),
                    Text("user name"),
                    Text("user.name@email.com"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                listtile(context,"to page1",first()),
                listtile(context,"to page2",culc()),
              ],
            )
          ],
        ));
  }

  ListTile listtile(BuildContext context,str,Widget) {
    return ListTile(
                title: Text(str,style: TextStyle(fontSize: 20),),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Widget,));
                },
              );
  }

  void show(BuildContext context) {
    showModalBottomSheet(context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('استخدام الكاميرا'),
              onTap: () {
                Navigator.pop(context);
                camera();
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('استخدام المعرض'),
              onTap: () {
                Navigator.pop(context);
                libraryPhotos();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> camera() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage == null) return;
    final image2 = File(pickedImage.path);
    setState(() {
      image = image2;
    });
  }

  Future<void> libraryPhotos() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) return;
    final image2 = File(pickedImage.path);
    setState(() {
      image = image2;
    });
  }
}