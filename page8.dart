import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projetpfe/vues/page9.dart';






class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {

 @override
  void initState() {
    super.initState();
    // navigate to the next page after 2 seconds
    Timer(Duration(milliseconds: 600), () {
      Get.to(Page9(),duration: Duration(milliseconds: 400),transition: Transition.rightToLeft);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.white70.withOpacity(0.9),
  body: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints)  {
    return SingleChildScrollView(
  child: Padding(
    padding: EdgeInsets.fromLTRB(
      constraints.maxWidth * 0.05,
      constraints.maxHeight * 0.08,
      constraints.maxWidth * 0.05,
      50
    ),
    child: Column(
     
      children: [
            Center(
              child: Image.asset(
                 "lib/assets/pgsZL6FT_400x400-removebg-preview.png",
                 scale: 3,
               ),
            ),
             SizedBox(
               height: 10,
             ),
             Center(
              child: Image.asset(
        "lib/assets/builder with check.png",
        scale: 2,
      ), ),

      SizedBox(height: 60,),
     
     
      Center(
        child: Text("Votre site a été créée avec succés",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 4, 103, 223),),)
        )

       ] )
          ) 
    );
  }));
  }
  
}
