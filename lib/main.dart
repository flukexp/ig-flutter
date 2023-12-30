import 'package:art_directory/responsive/mobile_screen_layout.dart';
import 'package:art_directory/responsive/responsive_layout_screen.dart';
import 'package:art_directory/responsive/web_screen_layout.dart';
import 'package:art_directory/screens/login_screen.dart';
import 'package:art_directory/screens/signup_screen.dart';
import 'package:art_directory/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyCcDTeiqpMvBZv3GIMumUvwsmFsHD4nv6Q',
            appId: "1:658179774650:web:abceb8c321b1270d4c0a83",
            messagingSenderId: "658179774650",
            projectId: "art-directory-a4bee",
            storageBucket: "art-directory-a4bee.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Art Directory',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: LoginScreen(),
    );
  }
}
