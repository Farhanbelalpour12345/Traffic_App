// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart' as geolocator;
// import 'package:geolocator/geolocator.dart';
//
// import 'MapPage.dart'; // or whatever name you want
//
// class SaveLocationPage extends StatefulWidget {
//   const SaveLocationPage({Key? key}) : super(key: key);
//
//   @override
//   _SaveLocationPageState createState() => _SaveLocationPageState();
// }
//
// class _SaveLocationPageState extends State<SaveLocationPage> {
//   var locationMessage = "";
//
// void getCurrentLocation() async{
//   var position = await Geolocator.getCurrentPosition(desiredAccuracy: geolocator.LocationAccuracy.high);
//   var lastPosition = await Geolocator.getLastKnownPosition();
//   print(lastPosition);
//   setState(() {
//     locationMessage = "$position";
//
//   });
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       centerTitle: true,
//       title: Text("لوکیشن",
//         style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),),
//       elevation: 0.7,
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Icon(Icons.location_on, size: 60, color: Colors.blue),
//           SizedBox(
//             height: 10,
//           ),
//           Text("انتخاب محل حادثه",
//             style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
//           SizedBox(
//             height: 30,
//           ),
//           Text(locationMessage),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             width: 180,
//             child: Material(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue,
//               elevation: 10,
//               clipBehavior: Clip.antiAlias,
//               child: TextButton(onPressed: () {
//                 getCurrentLocation();
//               },
//
//                   child: Text("ارسال گزارش مکان",
//                    style: TextStyle( color: Colors.white),)),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             width: 180,
//             child: Material(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue,
//               elevation: 10,
//               clipBehavior: Clip.antiAlias,
//               child: TextButton(onPressed: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => MapPage()));
//               },
//                   child: Text("نمایش روی نقشه",
//                     style: TextStyle( color: Colors.white),)),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }}