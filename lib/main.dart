import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:provider/provider.dart';
import 'package:traffic_app/HomePage.dart';
import 'package:traffic_app/aboutUs/aboutUs.dart';
import 'package:traffic_app/screens/originalRoute/AccidentReportScreen.dart';
import 'package:traffic_app/screens/originalRoute/CarSettingScreen.dart';
import 'package:traffic_app/Services/Auth.dart';
import 'package:traffic_app/models/user.dart';
import 'package:traffic_app/screens/originalRoute/SettingScreen.dart';
import 'package:traffic_app/screens/originalRoute/accidentScreens/MapPage.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/Engine_Oil.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/air_filter.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/anti_freeze.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/brake_oil.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/car_pile.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/disk.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/gasoline_filter.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/gearbox_oil.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/hydraulic_oil.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/lent.dart';
import 'package:traffic_app/screens/originalRoute/carSettingScreens/tire.dart';
import 'package:traffic_app/screens/originalRoute/education/Diagnosis/diagnosis.dart';
import 'package:traffic_app/screens/originalRoute/education/MediaEducation/media_educationScreens.dart';
import 'package:traffic_app/screens/originalRoute/education/TrafficRules/rules_screens.dart';
import 'package:traffic_app/screens/originalRoute/education/safety/safety_screens.dart';
import 'screens/originalRoute/carSettingScreens/timing_belt.dart';
import 'screens/profile/editProfile.dart';
import 'screens/profile/profile_screen.dart';
import 'package:traffic_app/screens/wrapper.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'package:traffic_app/theme.dart';
import 'screens/Splash/Splash_Screen.dart';
import 'screens/originalRoute/carSettingScreens/oil_filter.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainMaterialApp());
}

class MainMaterialApp extends StatefulWidget {
  const MainMaterialApp({Key? key}) : super(key: key);


  @override
  _MainMaterialAppState createState() => _MainMaterialAppState();
}

class _MainMaterialAppState extends State<MainMaterialApp> {
  bool switchValue = false;


  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
        value: AuthService().user,
        initialData: null,
        child:GetMaterialApp(
              theme: ThemeData(
                primaryColor: Colors.blueGrey,
              ),
              initialRoute: "/wrapper",
              getPages: [
                GetPage(
                  name: "/Splash",
                  page: () => SplashScreen(),
                ),
                GetPage(
                  name: "/wrapper",
                  page: () => Wrapper(),
                ),
                GetPage(
                  name: "/sign_up",
                  page: () => SignUpScreen(),
                ),
                GetPage(
                  name: "/homePage",
                  page: () => HomePage(),
                ),
                GetPage(
                  name: "/logOut",
                  page: () => SignUpScreen(),
                ),
                GetPage(
                  name: "/profile",
                  page: () => ProfileScreen(),
                ),
                GetPage(
                  name: "/editProfile",
                  page: () => EditProfile(),
                ),
                GetPage(
                  name: "/carSetting",
                  page: () => CarSettingScreen(),
                ),
                GetPage(
                  name: "/Setting",
                  page: () => SettingScreen(),
                ),
                GetPage(
                  name: "/engineOil",
                  page: () => EngineOil(),
                ),
                GetPage(
                  name: "/oilFilter",
                  page: () => OilFilter(),
                ),
                GetPage(
                  name: "/airFilter",
                  page: () => AirFilter(),
                ),
                GetPage(
                  name: "/gearboxOil",
                  page: () => GearboxOil(),
                ),
                GetPage(
                  name: "/gasolineFilter",
                  page: () => GasolineFilter(),
                ),
                GetPage(
                  name: "/antiFreeze",
                  page: () => AntiFreeze(),
                ),
                GetPage(
                  name: "/hydraulicOil",
                  page: () => HydraulicOil(),
                ),
                GetPage(
                  name: "/brakeOil",
                  page: () => BrakeOil(),
                ),
                GetPage(
                  name: "/carPile",
                  page: () => CarPile(),
                ),
                GetPage(
                  name: "/tire",
                  page: () => Tire(),
                ),
                GetPage(
                  name: "/safety",
                  page: () => SafetyScreens(),
                ),
                GetPage(
                  name: "/rulesScreens",
                  page: () => RulesScreens(),
                ),
                GetPage(
                  name: "/mediaEducation",
                  page: () => MediaEducationScreens(),
                ),
                GetPage(
                  name: "/mapPage",
                  page: () => MapPage(),
                ),
                GetPage(
                  name: "/accidentReport",
                  page: () => AccidentReportScreen(),
                ),
                GetPage(
                  name: "/aboutUs",
                  page: () => AboutUs(),
                ),
                GetPage(
                  name: "/timingBelt",
                  page: () => TimingBelt(),
                ),
                GetPage(
                  name: "/disk",
                  page: () => Disk(),
                ),
                GetPage(
                  name: "/lent",
                  page: () => Lent(),
                ),
                GetPage(
                  name: "/diagnosis",
                  page: () => Diagnosis(),
                ),
              ],
              // theme: theme(),
              debugShowCheckedModeBanner: false,
              // home: LoginPage(),
            ),
        );
  }
}
