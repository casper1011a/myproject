import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class image_picker extends StatefulWidget {
  const image_picker({super.key});

  @override
  State<image_picker> createState() => _image_pickerState();
}

class _image_pickerState extends State<image_picker> {
 late File _file;
    
  void _pickFromCamera() => ImagePicker.pickImage(source: ImageSource.gallery,)
    .then((File file) {
      print('You selected camera image: ${file.path}');
      setState(() => _file = file);
  } as FutureOr Function(XFile? value));

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      // ignore: unnecessary_null_comparison
      child: _file == null
        ? Text('nothing selected')
        : Image.file(_file),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.camera),
      onPressed: _pickFromCamera,
    ),
  );
}
  