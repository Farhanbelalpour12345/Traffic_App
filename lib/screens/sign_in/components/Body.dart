// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:traffic_app/size_config.dart';
// import 'package:traffic_app/components/custom_surfix_icon.dart';
// import 'package:traffic_app/helper/keyboard.dart';
// import 'package:traffic_app/components/default_button.dart';
// import 'package:traffic_app/constants.dart';
//
// import 'package:traffic_app/components/socal_card.dart';
// import 'sign_form.dart';
//
// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   _BodyState createState() => _BodyState();
// }
//
// class _BodyState extends State<Body> {
//   final _formKey = GlobalKey<FormState>();
//   String? email;
//   String? password;
//   bool? remember = false;
//   final List<String?> errors = [];
//
//   void addError({String? error}) {
//     if (!errors.contains(error))
//       setState(() {
//         errors.add(error);
//       });
//   }
//
//   void removeError({String? error}) {
//     if (errors.contains(error))
//       setState(() {
//         errors.remove(error);
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//           width: double.infinity,
//           height: 300,
//           // child: Padding(
//           //   padding: EdgeInsets.symmetric(
//           //       horizontal: getProportionateScreenWidth(20)),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//                child: SingleChildScrollView(
//                  padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(50)),
//                  child: Column(
//                   //  mainAxisAlignment: MainAxisAlignment.center,
//                   // crossAxisAlignment: CrossAxisAlignment.center,
//                   // verticalDirection: VerticalDirection.down,
//                   children: [
//                     Text(
//                       "Welcome Back",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: getProportionateScreenWidth(28),
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 20),
//                       child: Text(
//                         "Sign in with your email and password  \nor continue with social media",
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     // SizedBox(height: SizeConfig.screenHeight * 0.08),
//                     // Form(
//                     //   key: _formKey,
//                     //   child: Column(
//                     //     children: [
//                     Padding(padding:EdgeInsets.only(top: 10),child: buildEmailFormField()),
//                     SizedBox(height: getProportionateScreenHeight(30)),
//                     buildPasswordFormField(),
//                     SizedBox(height: getProportionateScreenHeight(30)),
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: remember,
//                           activeColor: kPrimaryColor,
//                           onChanged: (value) {
//                             setState(() {
//                               remember = value;
//                             });
//                           },
//                         ),
//                         Text("Remember me"),
//                         GestureDetector(onTap: () {}
//                             //     Navigator.pushNamed(
//                             //     context, ForgotPasswordScreen.routeName),
//                             // child: Text(
//                             //   "Forgot Password",
//                             //   style: TextStyle(decoration: TextDecoration.underline),
//                             ),
//                       ],
//                     ),
//                     // FormError(errors: errors),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10),
//                       child: DefaultButton(
//                         text: "Continue",
//                         press: () {
//                           if (_formKey.currentState!.validate()) {
//                             _formKey.currentState!.save();
//                             // if all are valid then go to success screen
//                             KeyboardUtil.hideKeyboard(context);
//                             // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
//                           }
//                         },
//                       ),
//                     ),
//                     //     ],
//                     //   ),
//                     // ),
//                     SizedBox(height: SizeConfig.screenHeight * 0.08),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SocalCard(
//                           icon: "assets/icons/google-icon.svg",
//                           press: () {},
//                         ),
//                         SocalCard(
//                           icon: "assets/icons/facebook-2.svg",
//                           press: () {},
//                         ),
//                         SocalCard(
//                           icon: "assets/icons/twitter.svg",
//                           press: () {},
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: getProportionateScreenHeight(20)),
//                     // NoAccountText(),
//                   ],
//               ),
//                ),
//             ),
//           ),
//       // child: SizedBox(
//       //   width: double.infinity,
//       //   child: Padding(
//       //     padding:
//       //     EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//       //     child: Container(
//       //       child: SingleChildScrollView(
//       //         child: Column(
//       //           children: [
//       //             SizedBox(height: SizeConfig.screenHeight * 0.04),
//       //             Text(
//       //               "Welcome Back",
//       //               style: TextStyle(
//       //                 color: Colors.black,
//       //                 fontSize: getProportionateScreenWidth(28),
//       //                 fontWeight: FontWeight.bold,
//       //               ),
//       //             ),
//       //             Text(
//       //               "Sign in with your email and password  \nor continue with social media",
//       //               textAlign: TextAlign.center,
//       //             ),
//       //             SizedBox(height: SizeConfig.screenHeight * 0.08),
//       //             SignForm(),
//       //             SizedBox(height: SizeConfig.screenHeight * 0.08),
//       //             Row(
//       //               mainAxisAlignment: MainAxisAlignment.center,
//       //               children: [
//       //                 SocalCard(
//       //                   icon: "assets/icons/google-icon.svg",
//       //                   press: () {},
//       //                 ),
//       //                 SocalCard(
//       //                   icon: "assets/icons/facebook-2.svg",
//       //                   press: () {},
//       //                 ),
//       //                 SocalCard(
//       //                   icon: "assets/icons/twitter.svg",
//       //                   press: () {},
//       //                 ),
//       //               ],
//       //             ),
//       //             SizedBox(height: getProportionateScreenHeight(20)),
//       //             NoAccountText(),
//       //           ],
//       //         ),
//       //       ),
//       //     ),
//       //   ),
//       // ),
//     );
//   }
//
//   TextFormField buildPasswordFormField() {
//     return TextFormField(
//       obscureText: true,
//       onSaved: (newValue) => password = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty) {
//           removeError(error: kPassNullError);
//         } else if (value.length >= 8) {
//           removeError(error: kShortPassError);
//         }
//         return null;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kPassNullError);
//           return "";
//         } else if (value.length < 8) {
//           addError(error: kShortPassError);
//           return "";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         labelText: "Password",
//         hintText: "Enter your password",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
//       ),
//     );
//   }
//
//   TextFormField buildEmailFormField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       onSaved: (newValue) => email = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty) {
//           removeError(error: kEmailNullError);
//         } else if (emailValidatorRegExp.hasMatch(value)) {
//           removeError(error: kInvalidEmailError);
//         }
//         return null;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kEmailNullError);
//           return "";
//         } else if (!emailValidatorRegExp.hasMatch(value)) {
//           addError(error: kInvalidEmailError);
//           return "";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         labelText: "Email",
//         hintText: "Enter your email",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
//       ),
//     );
//   }
// }
