import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures all widgets have been initialised

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyAKQBigekN3Sm3ecZ3xvaFgeAHEhgXlsts',
              appId: '1:977038116255:android:e57769281e0f77da3629aa',
              messagingSenderId: '977038116255',
              projectId: 'practice-app-2-ef600', storageBucket: 'gs://practice-app-2-ef600.appspot.com'))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'GemunuLibre-Bold',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainScreen());
  }
}
