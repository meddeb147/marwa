import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projetpfe/vues/page10.dart';






class Page9 extends StatefulWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  _Page9State createState() => _Page9State();
}

class _Page9State extends State<Page9> {




  @override
  void initState() {
    super.initState();
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
        child: Text("Voulez vous passer a",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 4, 103, 223),),)
        ),
        Center(
        child: Text("la création de votre armoire électrique?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 4, 103, 223),),)
        ),
        Center(
        child: Text("( vous pourrez toujours le faire plus tard )",style: TextStyle(fontSize: 15,
        color: Color.fromARGB(255, 4, 103, 223),),)
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.15),
         Padding(
                        padding: EdgeInsets.only( left :MediaQuery.of(context).size.width * 0.2,
                                                  right :MediaQuery.of(context).size.width * 0.02),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Plus tard",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 3, 41, 86),
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.15,
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(Page10(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn);
                              },
                              child: const Text(
                                  "Oui ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Inter",
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              
                              style: TextButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 7, 70, 148),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


       ] )
          ) 
    );
  }));
  }
  
}
