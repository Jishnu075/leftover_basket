import 'package:flutter/material.dart';
import 'package:leftover_basket/firebase/auth_service.dart';
import 'package:leftover_basket/screens/login_screen.dart';
import 'package:leftover_basket/screens/main_donar_view.dart';
import 'package:leftover_basket/screens/onboarding_screen.dart';
import 'package:leftover_basket/screens/signup_screen.dart';
import 'package:leftover_basket/screens/user_selection_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:leftover_basket/wrapper.dart';
import 'package:provider/provider.dart';
import 'firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(
        initialRoute: Wrapper.id,
        routes: {
          Wrapper.id: (context) => Wrapper(),
          OnBoardingScreen.id: (context) => OnBoardingScreen(),
          UserSelectionScreen.id: (context) => UserSelectionScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          SignUpScreen.id: (context) => SignUpScreen(),
          MainDonorView.id: (context) => MainDonorView(),
        },
      ),
    );
  }
}
