import 'package:covid_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/screens/login/login_screen.dart';
import 'package:covid_app/screens/register/register_screen.dart';

import 'background.dart';
import '../../../utils/start_button.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome to Co19tion',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height *0.05),
              // SvgPicture.asset(
              //   'assets/icons/chat.svg',
              //   height: size.height * 0.4
              // ),
              SizedBox(height: size.height *0.05),
              StartButton(
                text: 'LOGIN',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return const LoginScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: size.height *0.01),
              StartButton(
                text: 'REGISTER',
                color: kPrimaryLightColor,
                textColor: Colors.black,
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
          ),
      ),
    );
  }
}