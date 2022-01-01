import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traffic_app/screens/originalRoute/AmalKardTaamir.dart';

class TBottomNavigationBar extends StatelessWidget {
  const TBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 2 - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){Get.toNamed("/homePage");}, icon: Icon(Icons.home)),
                    //InkWell(child: Icon(Icons.home, color: Colors.black45,size: 26,)),
                    //Icon(Icons.person, color:Colors.black45,size: 26,),
                    IconButton(onPressed: (){Get.toNamed("/profile");}, icon: Icon(Icons.person)),
                  ],
                )),
            Container(
                width: MediaQuery.of(context).size.width / 2 - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // InkWell(
                    //     child: Icon(
                    //       Icons.car_repair,
                    //       size: 26,
                    //       color: Colors.black45,
                    //     ),
                    //   onTap: (){Get.toNamed("/carSetting");},
                    // ),
                    IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AmalKardTaamir()));
                    }, icon: Icon(Icons.car_repair)),
                    IconButton(onPressed: (){Get.toNamed("/Setting");}, icon: Icon(Icons.settings)),
                   // Icon(Icons.settings, color:Colors.black45,size: 26,)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

