import 'package:flutter/material.dart';
import 'package:leftover_basket/firebase/auth_service.dart';
import 'package:provider/provider.dart';

class MainDonorView extends StatelessWidget {
  static const String id = 'main_donar_view';

  const MainDonorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return SafeArea(
      child: Container(
        height: 65,
        width: 65,
        color: Colors.yellow,
        child: MaterialButton(
          child: Text('signout'),
          onPressed: () async {
            // FirebaseAuth.instance.signOut();
            await authService.signOut();
          },
        ),
      ),
    );
  }
}
