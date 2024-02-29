// ignore_for_file: avoid_print

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/page/btm_navbar.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBbX7GpTvtPhFhh2yZ1ZZib0bpcOxbk6UI",
            appId: "1:976748895908:web:eb76d78cd8575aaaa15031",
            messagingSenderId: "G-HMZ140T61T",
            projectId: "myfluttercollege-6d48f"));
  }
  return runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      title: "app",
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const BottomNav();
  }
}
