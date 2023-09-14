import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodie_sellers_app/authentication/auth_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

//********************************************************* */
class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const AuthScreen()));
    });
  }
//*********************************************************** */

  @override
  void initState() {
    /// this function is called autometically when this page loads
    super.initState();
    startTimer(); //We just call the timeer function we created
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Images/splash.jpg"),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Sell Food Online",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 40,
                      fontFamily: "Signatra",
                      letterSpacing: 3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
