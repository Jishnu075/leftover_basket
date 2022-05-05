// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:leftover_basket/screens/login_screen.dart';
// import 'package:leftover_basket/screens/main_donar_view.dart';
// import 'package:leftover_basket/components/popups/login_error.dart';

// class UserSelectionScreen extends StatefulWidget {
//   static const String id = 'user_selection_screen';
//   const UserSelectionScreen({Key? key}) : super(key: key);

//   @override
//   State<UserSelectionScreen> createState() => _UserSelectionScreenState();
// }

// class _UserSelectionScreenState extends State<UserSelectionScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: StreamBuilder<User?>(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.hasError) {
//               return const LoginErrorPopup(errorMessage: 'errorMessage');
//             }
//             if (snapshot.hasData) {
//               return MainDonorView();
//             } else {
//               return LoginScreen();
//             }
//           },
//         ));
//   }
// }

// // UserSelectionScreenContent(),
// // class UserSelectionScreenContent extends StatelessWidget {
// //   const UserSelectionScreenContent({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.only(
// //           top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: [
// //               const Text('Leftover Basket',
// //                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
// //               UserSelectionButton(
// //                   onPressed: () {
// //                     Navigator.pushNamed(context, LoginScreen.id);
// //                   },
// //                   title: 'Restaurant'),
// //               UserSelectionButton(
// //                   onPressed: () {
// //                     Navigator.pushNamed(context, LoginScreen.id);
// //                     //TODO: change login screen and sign up screen according to consumer
// //                   },
// //                   title: 'Food Bank'),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }


// // StreamBuilder<User?>(
// //         stream: FirebaseAuth.instance.authStateChanges(),
// //         builder: (context, snapshot) {
// //           if (snapshot.hasData) {
// //             return NothingScreen();
// //           } else {
// //             return LoginScreen();
// //           }
// //         },