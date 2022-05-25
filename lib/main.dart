import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/create_room_screen.dart';
import 'package:tic_tac_toe/screens/friend_game.dart';
import 'package:tic_tac_toe/screens/join_room_screen.dart';
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
      routes: {
        MainMenuScreen.routeName:(context) => MainMenuScreen(),
        FriendMenu.routeName:(context) => FriendMenu(),
        CreateRoomScreen.routeName:(context) => CreateRoomScreen(),
        JoinRoomScreen.routeName:(context) => JoinRoomScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.specialEliteTextTheme()
      ),
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
