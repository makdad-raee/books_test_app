import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color scaffoldBackgroundColor = const Color(0xff100B20);
TextStyle style16 = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54);
TextStyle style18 = const TextStyle(
    fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black);

TextStyle style30 = const TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
    List<BottomNavigationBarItem> bottomNavigationBarItems = const [
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house), label: 'home'),
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.message), label: 'Chats'),
  BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.circlePlus), label: 'post'),
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: 'Users'),
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.gear), label: 'Settings'),
];
const String personPIc =
    'https://img.freepik.com/free-photo/expressive-redhead-bearded-man-with-hat_176420-32254.jpg?t=st=1720342526~exp=1720346126~hmac=21164058bbc799ae7609e5075f3b43f8f5b403cfee61013a1272c8f434ce14f2&w=740';
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