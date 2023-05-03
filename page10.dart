import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';



class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  _Page10State createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _importImage() async {
    final XFile? image =
        await _picker.pickImage(source: ImageSource.gallery);
    // Do something with the selected image
  }

  Future<void> _takeImage() async {
    final XFile? image =
        await _picker.pickImage(source: ImageSource.camera);
    // Do something with the selected image
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                constraints.maxWidth * 0.05,
                constraints.maxHeight * 0.08,
                constraints.maxWidth * 0.05,
                50,
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "lib/assets/pgsZL6FT_400x400-removebg-preview.png",
                      scale: 3,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 60),
                  Center(
                    child: Text(
                      "Veuillez insérer une photo de",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 103, 223),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "votre armoire électrique",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 103, 223),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: InkWell(
                          onTap: _importImage,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.photo_library,
                                color: Color.fromARGB(255, 4, 103, 223),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Importer une image',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 4, 103, 223),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
Container(
   width: MediaQuery.of(context).size.width * 0.42,
   height: MediaQuery.of(context).size.height * 0.2,
   decoration: BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.circular(20),
   ),
   child: InkWell(
     onTap: () {
       _takeImage();
     },
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(Icons.camera_alt,color: Color.fromARGB(255, 4, 103, 223) ,),
         SizedBox(height: 8.0),
         Text('Take Picture',style: TextStyle(color: Color.fromARGB(255, 4, 103, 223))),
       ],
     ),
   ),
),

     ],
   ),

SizedBox(height: MediaQuery.of(context).size.height*0.1,),
        Center(
          child:  TextButton(
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
                                elevation: 15,
                                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
        )


       ] )
          ) 
    );
  }));
  }
  
}
