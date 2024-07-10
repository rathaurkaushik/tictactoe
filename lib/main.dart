import 'package:flutter/material.dart';
import 'package:tictactoe/screen/create_room_screen.dart';
import 'package:tictactoe/screen/game_screen.dart';
import 'package:tictactoe/screen/join_room_screen.dart';
import 'package:tictactoe/screen/main_screen.dart';
import 'package:tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
      routes: {
        MainScreen.routeName: (context) => const MainScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        GameScreen.routeName: (context) => const GameScreen(),
      },
      initialRoute: MainScreen.routeName,
      home: const MainScreen(),
    );
  }
}
