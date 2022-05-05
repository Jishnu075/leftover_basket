import 'package:flutter/material.dart';
import '../components/buttons/rounded_button.dart';
import 'package:leftover_basket/firebase/auth_service.dart';
import 'package:provider/provider.dart';
import '../components/cards.dart';
import '../components/widgets.dart';

class MainDonorAddScreen extends StatelessWidget {
  static const String id = 'donor_add_screen';
  final AuthService authService = AuthService();

  MainDonorAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawer(authService: authService),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          reverse: true,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(padding: EdgeInsets.only(top: 50.0)),
                const CameraCard(),
                const SizedBox(height: 50),
                NormalTextField(hintText: 'Name'),
                const SizedBox(height: 30),
                NormalTextField(hintText: 'Type'),
                const SizedBox(height: 30),
                NormalTextField(hintText: 'Date'), //TODO: DATEPICKER
                const SizedBox(height: 30),
                NormalTextField(hintText: 'Location'),
                const SizedBox(height: 30),
                RoundedButton(
                    text: 'Upload',
                    onPressed: () {
                      //TODO: add functionality for upload button
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NormalTextField extends StatelessWidget {
   NormalTextField({this.hintText});
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ));
  }
}


