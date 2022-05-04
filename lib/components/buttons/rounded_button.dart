import 'package:flutter/material.dart';
import 'package:leftover_basket/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.text,
      this.color = kYellowColor,
      required this.onPressed})
      : super(key: key);
  final Color color;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: 300,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
          ),
          onPressed: onPressed,
          child: Text(text, style: kButtonTextStyle),
        ),
      ),
    );
  }
}

//  MaterialButton(
//           splashColor: Colors.white,
//           onPressed: onPressed,
//           minWidth: 200.0,
//           height: 42.0,
//           child: Text(text, style: kBoldSmallTextStyle),
//         ),