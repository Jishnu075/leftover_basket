import 'package:flutter/material.dart';
import 'package:leftover_basket/firebase/auth_service.dart';
import 'package:leftover_basket/screens/main_donar_view.dart';
import 'package:leftover_basket/screens/user_selection_screen.dart';
import 'package:provider/provider.dart';
import 'models/user_model.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? UserSelectionScreen() : MainDonorView();
          } else {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
