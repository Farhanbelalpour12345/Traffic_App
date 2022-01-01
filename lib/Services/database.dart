import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traffic_app/models/engineOil.dart';

class DatabaseService {

  final String uid;
  DatabaseService(this.uid);

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('Users');
  final CollectionReference oilEngine = FirebaseFirestore.instance.collection('OilEngine');
  final CollectionReference oilFilter = FirebaseFirestore.instance.collection('OilFilter');
  final CollectionReference airFilter = FirebaseFirestore.instance.collection('AirFilter');
  final CollectionReference gearboxOil = FirebaseFirestore.instance.collection('GearboxّOil');
  final CollectionReference gasolineFilter = FirebaseFirestore.instance.collection('gasolineFilter');
  final CollectionReference antiFreeze = FirebaseFirestore.instance.collection('antiFreeze');
  final CollectionReference hydraulicOil = FirebaseFirestore.instance.collection('hydraulicOil');
  final CollectionReference brakeOil = FirebaseFirestore.instance.collection('brakeOil');
  final CollectionReference carPile = FirebaseFirestore.instance.collection('carPile');
  final CollectionReference tire = FirebaseFirestore.instance.collection('tire');



  Future updateUserData(String ?name,String ?phoneNumber,String ?imagePath) async {
    return await userCollection.doc(uid).set({
      'name' : name,
      'phoneNumber':phoneNumber,
      'imagePath' : imagePath
    });
  }

  Future saveOilEngineInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveOilFilterInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveAirFilterInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveGearboxOilInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveGasolineFilterInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveAntiFreezeInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveHydraulicOilInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveBrakeOilInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveCarPileInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  Future saveTireInfo(String ?km,String ?dateTime)async{
    return await oilEngine.doc(uid).set({
      'km': km,
      'dateTime': dateTime
    });
  }
  // Stream<QuerySnapshot> get getOilEngineInfo{
  //   return oilEngine.snapshots().map(_oilListFromSnapShot);
  // }
  //
  // List<EngineOil> _oilListFromSnapShot(QuerySnapshot snapshot){
  //   return snapshot.docChanges.map((doc){
  //     return EngineOil(
  //       km: doc.doc['km'] ?? '',
  //     time: doc.doc['dateTime'] ?? ''
  //   );
  //   }).toList();
  // }
}