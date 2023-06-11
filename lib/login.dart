// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:make_my_trip/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Image.network(
                'https://imgak.mmtcdn.com/pwa_v3/pwa_hotel_assets/header/logo@2x.png'),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 45,
            width: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 4, 66, 173),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Log in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("-Or-"),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 66, 173),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Login with FaceBook ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Login with Tweeter ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Login with Google",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
