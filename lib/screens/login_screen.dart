import 'package:flutter/material.dart';
import 'package:leftover_basket/components/buttons/rounded_button.dart';
import 'package:leftover_basket/constants.dart';
import 'package:leftover_basket/firebase/auth_service.dart';
import 'package:leftover_basket/screens/signup_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  LoginScreen({Key? key}) : super(key: key);

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
                  Image.asset('assets/images/login.png'),
                  const Text('Login', style: kBoldBigTextStyle),
                  const SizedBox(
                    height: 17,
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
                ],
              ),
              RoundedButton(
                  text: 'LogIn',
                  onPressed: () {
                    authService.signInWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    );
                    // signIn()
                  }),

              // RoundedButton(
              //   text: 'SignUp',
              //   onPressed: () {
              //
              //   },
              //   color: Colors.orangeAccent,
              // ),
              const SizedBox(height: 30),
              Text('Not responding? - Check email and password again.'),

              Row(
                children: [
                  const Text('Don’t have an account?'),
                  const SizedBox(width: 5.0),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
//   Future signIn() async {
//     showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (context) => Center(
//               child: CircularProgressIndicator(),
//             ));
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: emailController.text.trim(),
//           password: passwordController.text.trim());
//       Navigator.pushNamed(context, MainDonorView.id);
//     } on FirebaseAuthException catch (e) {
//       print(e);
//     }
//   }
// }
