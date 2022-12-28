import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/Login.jpg"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome to HomeZe\n Sign Up",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Color(0xFF332FD0),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter full Name",
                      labelText: "FullName",
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Color(0xFF3321FD0), width: 2))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email",
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF3321FD0)))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF3321FD0)))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: "Enter Phone Number",
                      labelText: "Number",
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF3321FD0)))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
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
                    height: 70,
                    width: 400,
                    alignment: Alignment.center,
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 30, color: Colors.white),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Already have an account? Login",
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
          )
        ],
      )),
    );
  }
}
