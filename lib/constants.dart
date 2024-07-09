import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color scaffoldBackgroundColor = const Color(0xff100B20);
const String boxName='books_box';
TextStyle style16 = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);
TextStyle style18 = const TextStyle(
    fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white);
    TextStyle style20 = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white);

TextStyle style30 = const TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
TextStyle style24 = const TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white);
List<BottomNavigationBarItem> bottomNavigationBarItems = const [
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house), label: 'home'),
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart), label: 'Favourites'),
  BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.circlePlus), label: 'Add Book'),
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bookmark), label: 'Saved'),
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.gear), label: 'Settings'),
];
const String personPIc =
    'https://img.freepik.com/free-photo/expressive-redhead-bearded-man-with-hat_176420-32254.jpg?t=st=1720342526~exp=1720346126~hmac=21164058bbc799ae7609e5075f3b43f8f5b403cfee61013a1272c8f434ce14f2&w=740';
String bookPic =
    'https://img.freepik.com/free-photo/education-concept-with-book_23-2149001214.jpg?t=st=1720377293~exp=1720380893~hmac=97b65c9cfcc9005d0cf3d56f9a3d2be47e51dbd46d4bf0eaf3056dd245da6a9a&w=360';
const String bookPic2 =
    'https://img.freepik.com/free-photo/english-dictionary-blue-background_23-2149440479.jpg?t=st=1720377391~exp=1720380991~hmac=77b79b34dca226d6a1613e9b876d92ea96be0f8abe217e5c0aaae61bf726b0bf&w=360';
    const String lorem= 'Lorem Ipsum is simply dummy text of the printing and typesetting Lorem Ipsum is simply dummy text of the printing and typesetting software like Aldus PageMaker including versions of Lorem Ips';
// var _myColorOne = Colors.grey;
//   var _myColorTwo = Colors.grey;
//   var _myColorThree = Colors.grey;
//   var _myColorFour = Colors.grey;
//   var _myColorFive = Colors.grey;


//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("My Rating"),
//      ),
//       body:  new Center(
//         child: new Container(
//           height: 10.0,
//           width: 500.0,
//           child: new Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 new IconButton(icon: new Icon(Icons.star),
//                   onPressed: ()=>setState((){
//                     _myColorOne=Colors.orange;
//                     _myColorTwo=null;
//                     _myColorThree=null;
//                     _myColorFour=null;
//                     _myColorFive=null;
//                 }),color: _myColorOne,),
//                 new IconButton(icon: new Icon(Icons.star),
//                   onPressed: ()=>setState((){
//                     _myColorOne=Colors.orange;
//                     _myColorTwo=Colors.orange;
//                     _myColorThree=Colors.grey;
//                     _myColorFour=Colors.grey;
//                     _myColorFive=Colors.grey;
//                 }),color: _myColorTwo,),
//                 new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
//                   _myColorOne=Colors.orange;
//                   _myColorTwo=Colors.orange;
//                   _myColorThree=Colors.orange;
//                   _myColorFour=Colors.grey;
//                   _myColorFive=Colors.grey;
//                 }),color: _myColorThree,),
//                 new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
//                   _myColorOne=Colors.orange;
//                   _myColorTwo=Colors.orange;
//                   _myColorThree=Colors.orange;
//                   _myColorFour=Colors.orange;
//                   _myColorFive=Colors.grey;
//                 }),color: _myColorFour,),
//                 new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
//                   _myColorOne=Colors.orange;
//                   _myColorTwo=Colors.orange;
//                   _myColorThree=Colors.orange;
//                   _myColorFour=Colors.orange;
//                   _myColorFive=Colors.orange;
//                 }),color: _myColorFive,),
//               ],

//           ),
//         ),
//       ),
//     );
//   }
