<div align="left">
  <h3 align="left">Flutter OpenCV4</h3>

  <p align="left">
Flutter embedded opencv_4 packages sample
  </p>
</div>

### Example

```
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:ulc_mobile/interfaces/builder/opencv_builder.dart';
import 'package:ulc_mobile/interfaces/method/canny.dart';
import 'package:ulc_mobile/interfaces/method/gaussianBlur.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  XFile? _image;
  img.Image? _image2;
  final ImagePicker _picker = ImagePicker();

  void onProcessImage() async {
    if (_image == null) return;
    final queryBuilder = OpenCVQueryBuilder(File(_image!.path))
      ..grayScale()
      ..gaussianBlur(
          GaussianBlurParams(kSizedWidth: 3, kSizedHeight: 3, sigmaX: 0))
      ..canny(CannyParams(threshold1: 75, threshold2: 200));

    final image = await queryBuilder.processImage();

    if (image == null) return;

    setState(() {
      _image2 = img.decodeImage(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_image2 == null && _image != null)
                Image.file(File(_image!.path)),
              if (_image2 != null) Image.memory(img.encodeJpg(_image2!)),
              ElevatedButton(
                  onPressed: onProcessImage,
                  child: const Text("Process Image")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _picker.pickImage(source: ImageSource.gallery).then((value) {
              setState(() {
                _image = value;
              });
            });
          },
          tooltip: 'Pick Image',
          child: const Icon(Icons.add),
        ));
  }
}

```
