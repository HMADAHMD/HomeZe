import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeze_screens/homescreen.dart';
import 'package:homeze_screens/signup.dart';
import 'package:simple_animations/simple_animations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset("assets/images/Login.jpg"),
              Text(
                "Login",
                style: GoogleFonts.poppins(
                  color: Color(0xFF332FD0),
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(),
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "Enter your email",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: "Enter your password",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 70,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            child: Ink(
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Colors.blue,
                                      Color.fromARGB(255, 168, 202, 253)
                                    ]),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Container(
                                  width: 400,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.poppins(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                "Don't have an account? SignUp",
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
              )
            ],
          ))),
    );
  }
}
