import 'package:flutter/material.dart';
import 'package:leftover_basket/firebase/auth_service.dart';
import '../components/buttons/drawer_button.dart';
import '../components/cards.dart';
import '../components/widgets.dart';

class MainDonorView extends StatelessWidget {
  static const String id = 'main_donor_view';
  final AuthService authService = AuthService();

  MainDonorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawer(authService: authService),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(padding: const EdgeInsets.only(top: 50.0)),
            const DrawerButton(),
            const RoundedPostCard(
              icon: Icons.add
            ),
          ],
        ),
      ),
    );
  }
}





// Custom roundedbox with optional icon at the center of the box.


// class Drawer extends StatelessWidget {
//   const Drawer({Key? key, ListView child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // Important: Remove any padding from the ListView.
//       padding: EdgeInsets.zero,
//       children: [
//         const DrawerHeader(
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//           child: Text('Drawer Header'),
//         ),
//         ListTile(
//           title: const Text('Item 1'),
//           onTap: () {
//             // Update the state of the app
//             // ...
//             // Then close the drawer
//             Navigator.pop(context);
//           },
//         ),
//         ListTile(
//           title: const Text('Item 2'),
//           onTap: () {
//             // Update the state of the app
//             // ...
//             // Then close the drawer
//             Navigator.pop(context);
//           },
//         ),
//       ],
//     );
//   }
// }
