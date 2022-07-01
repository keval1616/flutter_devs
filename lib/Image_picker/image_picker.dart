
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 180,
              color: Colors.orangeAccent,
              child: (_image != null)
                  ? Image.file(
                _image!,
                height: 200,
                width: 180,
                fit: BoxFit.fill,
              ) :Image.asset("assets/empty.jpeg",fit: BoxFit.cover,),

            ),
            SizedBox(height: 20,),

            Center(
              child: ElevatedButton(
                child: Text('pick Camera'),
                onPressed: () async{
                  getCameraImage();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 19))),

      ),


            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('pick Gallery'),
              onPressed: () async{
                getGalleryImage();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 19))),

            ),
          ],
        ),

    );
  }
}
