import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/colors.dart';
import 'package:flutter/services.dart';
import 'screens/main_menu.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.specialEliteTextTheme()
      ),
      home: MainMenuScreen(),
    );
  }
}
