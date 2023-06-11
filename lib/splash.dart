import 'dart:async';

import 'package:flutter/material.dart';
import 'package:make_my_trip/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://imgak.mmtcdn.com/pwa_v3/pwa_hotel_assets/header/logo@2x.png'),
      ),
    );
  }
}
