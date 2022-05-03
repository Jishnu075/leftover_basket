import 'package:flutter/material.dart';

class LoginErrorPopup extends StatelessWidget {
  final String errorMessage;

  const LoginErrorPopup({required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AlertDialog(
        actions: [
          MaterialButton(
            color: Colors.black,
            child: Text('Try again'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
        title: Text(errorMessage),
      ),
    );
  }
}
