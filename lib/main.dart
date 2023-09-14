import 'package:flutter/material.dart';
import 'package:foodie_sellers_app/splashScreen/splash_screen.dart';

Future<void> main() async {
  //waiting for data
  WidgetsFlutterBinding.ensureInitialized(); //maybe for waiting data sync.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sellers App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MySplashScreen(),
    );
  }
}
