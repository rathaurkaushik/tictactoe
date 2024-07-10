import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/screen/create_room_screen.dart';
import 'package:tictactoe/screen/join_room_screen.dart';
import 'package:tictactoe/widget/common_button.dart';

class MainScreen extends StatelessWidget {
  static String routeName = '/main-menu';

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  onTap: () {
                    createRoom(context);
                  },
                  text: 'Create Room'),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                  onTap: () {
                    joinRoom(context);
                  },
                  text: 'Join Room'),
            ],
          ),
        ),
      ),
    );
  }
}
