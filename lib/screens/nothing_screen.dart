import 'package:flutter/material.dart';

class NothingScreen extends StatelessWidget {
  const NothingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.green,
        height: 50,
        width: 50,
        child: ElevatedButton(
          child: Text('press'),
          onPressed: () {},
        ),
      ),
    );
  }
}
