import 'package:fleischer_foundation/auth/login_screen.dart';
import 'package:fleischer_foundation/auth/register_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final loginBtn = Material(
      elevation: 5,
      color: Colors.white,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.white, width: 2),
      ),
      // borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        child: const Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            )),
      ),
    );

    final registerBtn = Material(
      elevation: 5,
      color: Colors.white,
      // shape: const StadiumBorder(
      // side: BorderSide(color: Colors.black, width: 2),
      // ),
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegisterScreen()));
        },
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        child: const Text("Register",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            )),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
                child: Image.asset(
                  "assets/logo2.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              loginBtn,
              SizedBox(
                height: 15,
              ),
              registerBtn
            ],
          ),
        ),
      ),
    );
  }
}
