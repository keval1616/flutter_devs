
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class Image_picker extends StatefulWidget {
  const Image_picker({Key? key}) : super(key: key);

  @override
  State<Image_picker> createState() => _Image_pickerState();
}

class _Image_pickerState extends State<Image_picker> {

  final picker = ImagePicker();
  File? _image;

//this is method made for getgallery image from gallery...
  Future getGalleryImage() async {
    final pickedFile =
    await picker.pickImage(source: ImageSource.gallery).then((value) {
      setState(() {
        print(value!.path);
        if (value.path.isNotEmpty) {
          print("image selected");
          _image = File(value.path);

        } else {
          print('No Image Selected');
        }
      });
    });
  }






//this is method made for getcamera image from camera...

  Future getCameraImage() async {
    final pickedFile =
    await picker.pickImage(source: ImageSource.camera).then((value) {
      setState(() {
        print(value!.path);
        if (value.path.isNotEmpty) {
          print("image selected");
          _image = File(value.path);

        } else {
          print('No Image Selected');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image Picker"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body:
        Center(
          child: ElevatedButton(
            child: Text('Button'),
            onPressed: () async{
             await getCameraImage();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 19))),

      ),
        ),
    );
  }
}
