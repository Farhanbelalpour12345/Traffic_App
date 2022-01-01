import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traffic_app/aboutUs/body.dart';
import 'package:traffic_app/components/socal_card.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
    );
  }
}
//       body: ListView(
//         physics: BouncingScrollPhysics(),
//         padding: EdgeInsets.all(20),
//         children: [
//           ListTile(
//             title: Text(
//               'برنامه ترافیکی',
//               style: TextStyle(
//                 fontFamily: "Sans",
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             //leading: SocalCard(icon: "assets/images/icon.jpg",press: (){},)
//           )
//         ],
//       );
//   }
// }
