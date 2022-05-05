import 'package:flutter/material.dart';
import '../firebase/auth_service.dart';
import '../screens/md_add_screen.dart';

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
          title: const Text('sign out'),
          onTap: () {
            authService.signOut();
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            Navigator.pushNamed(context, MainDonorAddScreen.id);

            //TODO: CHANGE
            // Update the state of the app
            // ...
            // Then close the drawer
            // Navigator.pop(context);
          },
        ),
      ],
    ));
  }
}
