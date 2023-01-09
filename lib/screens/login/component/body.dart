import 'package:covid_app/screens/home_screen.dart';
import 'package:covid_app/services/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/utils/checking.dart';
import 'package:get/get.dart';
import '../../../utils/password_field.dart';
import '../../../utils/start_button.dart';
import '../../../utils/uname_field.dart';
import '../../register/register_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final authC = Get.put(AuthController());
    Size size = MediaQuery.of(context).size;
    
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            UnameField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            PasswordField(
              onChanged: (value) {},
            ),
            StartButton(
              text: "LOGIN",
              press: () {
                // FirebaseAuth.instance
                //       .signInWithEmailAndPassword(
                //           email: emailController.text,
                //           password: passwordController.text)
                //       .then((value) {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => const HomeScreen()));
                //   }).onError((error, stackTrace) {
                //     print("Error ${error.toString()}");
                //   });
                authC.login(emailController.text, passwordController.text);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const HomeScreen();
                //     },
                //   ),
                // );
              },
            ),
            SizedBox(height: size.height * 0.03),
            CheckAccount(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegisterScreen();
                    },
                  ),
                );
              },
            ),
          ]
        )
      )
    );
  }
}