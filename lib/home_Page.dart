import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("package Example"),
        centerTitle: true,


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            InkWell(
              onTap : (){
                Navigator.pushNamed(context, '/image_picker');
              },
              child: Container(
                width: 330,
                height: 50,
                child: Center(child: Text("Image_Picker",style:  TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(

                    color:Color(0xff81B39A),//ColorConstants.buttonColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 3.0,
                        offset: Offset(0,3)
                    ),]),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap : (){
                Navigator.pushNamed(context, '/HomePage');
              },
              child: Container(
                width: 330,
                height: 50,
                child: Center(child: Text("Greeting Card",style:  TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(

                    color:Color(0xff81B39A),//ColorConstants.buttonColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 3.0,
                        offset: Offset(0,3)
                    ),]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
