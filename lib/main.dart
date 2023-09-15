import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 List<String> images =[
  "assets/im.webp",
  "assets/img.jpg",
  "assets/photo2.webp"
];
  var cotroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
  debugShowCheckedModeBanner: false,
home: Scaffold(
backgroundColor: const Color.fromARGB(255, 234, 227, 207),
  appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 150, 168, 78),
    title: Text("Photos Library",
    style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),) ,

   
 ),


body: Column(

  mainAxisAlignment: MainAxisAlignment.center,

  children: [
   
   CarouselSlider(
    items: images.map((e) => Image.asset(e,fit: BoxFit.cover,)).toList(),
    options: 

      CarouselOptions(
      enlargeCenterPage: true,
      viewportFraction: .8,
      autoPlayAnimationDuration: Duration(microseconds: 200),

    )

    ),

SizedBox(height: 20,),

FadeInImage(
  width: 200,
  height:150,
  placeholder: AssetImage("assets/raver.jpg",),
  image: AssetImage("assets/natu.avif"),
  fadeInDuration: Duration(milliseconds: 3000),

),





CarouselSlider(

  items:[

Image.asset("assets/ima.jpg"),

Image.asset("assets/image.jpg"),

Image.asset("assets/image2.jpg"),

  ],

 options: 

 CarouselOptions(

  autoPlay: true,

  enlargeCenterPage: true,

 )

 ),











 //.........................

//     Container(

//       margin: EdgeInsets.all(30),

//       child: TextField(

//       controller: cotroller,

//     decoration: InputDecoration(

//     hintText: "User Name",

//     hintMaxLines: 3,

//     hintStyle: TextStyle(

//       color: Color.fromARGB(255, 170, 170, 100),

//     ),

//     labelText: "Name",

//     labelStyle: TextStyle( color: Color.fromARGB(255, 150, 168, 78)),

//     prefix: Icon(Icons.person_2,color: Color.fromARGB(255, 150, 168, 78), ),

//     //suffix: Icon(Icons.person),

    

//      border:OutlineInputBorder(), 

    

//     ),



    

//     ),

//     ),





//     Container(

// child: ElevatedButton(onPressed: (){

// print(cotroller.text);



// }, child: Text("click")),

//     ),





  ],

),




  
),

);
  }
}