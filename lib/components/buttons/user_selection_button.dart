import 'package:flutter/material.dart';
import 'package:leftover_basket/constants.dart';

class UserSelectionButton extends StatelessWidget {
  const UserSelectionButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final VoidCallback onPressed;
  final String title;

//TODO: change material button to elevated button to avoid square overlay over the button
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: kYellowColor,
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          splashColor: Colors.black26,
          onPressed: onPressed,
          minWidth: 150.0,
          height: 130.0,
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23.0),
          ),
        ),
      ),
    );
  }
}
