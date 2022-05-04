import 'package:flutter/material.dart';
import 'package:leftover_basket/firebase/auth_service.dart';

class MainDonorView extends StatelessWidget {
  static const String id = 'main_donar_view';
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
            Container(padding: const EdgeInsets.only(top: 40.0)),
            const DrawerButton(),
            RoundedBox(
              icon: Icons.add,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
          child: const Icon(
            Icons.menu_rounded,
            // size: 30,
          ),
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          });
    });
  }
}

class EndDrawer extends StatelessWidget {
  const EndDrawer({
    Key? key,
    required this.authService,
  }) : super(key: key);

  final AuthService authService;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 236, 205, 35),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi,',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                authService.currentUser(),
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ));
  }
}

// Custom roundedbox with optional icon at the center of the box.
class RoundedBox extends StatelessWidget {
  const RoundedBox({Key? key, this.icon}) : super(key: key);
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    var _screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        width: _screensize.width,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 155, 155, 155),
        ),
        child: Icon(icon, size: 50),
      ),
    );
  }
}

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
