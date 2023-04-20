// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projeto_lorrayne/view/Tela_inicio.dart';

// ignore: duplicate_import

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      title: 'Início',
      home: SplashScreen(),
    ),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => TelaInicio()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/inicio.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
