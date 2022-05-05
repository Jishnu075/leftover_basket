import 'package:flutter/material.dart';
import 'package:leftover_basket/components/buttons/rounded_button.dart';
import 'package:leftover_basket/constants.dart';
import 'package:leftover_basket/firebase/auth_service.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    final passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(
            top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/signup.png'),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('Sign Up', style: kBoldBigTextStyle),
                  const SizedBox(
                    height: 40,
                  ),

                  TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration:
                          kTextFieldDecoration.copyWith(hintText: 'Email')),
                  const SizedBox(
                    height: 17,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  // Text(),
                ],
              ),
              RoundedButton(
                  text: 'SignUp',
                  onPressed: () async {
                    await authService.createUserWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    );
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  // Future signup() async {
  //   showDialog(
  //       barrierDismissible: false,
  //       context: context,
  //       builder: (context) => Center(
  //             child: CircularProgressIndicator(),
  //           ));
  //   try {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: passwordController.text.trim());
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   }

  //   Navigator.pushNamed(context, LoginScreen.id);
  // }
}
