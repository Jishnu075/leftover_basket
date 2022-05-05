import 'package:flutter/material.dart';

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