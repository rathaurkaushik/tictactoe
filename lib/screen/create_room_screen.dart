import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tictactoe/resources/socket_methods.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/widget/common_button.dart';
import 'package:tictactoe/widget/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _namedController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();
  @override
  void dispose() {
    super.dispose();
    _namedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Responsive(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Create Room',
              style: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: size.height * 0.02),
            CustomTextField(
                hintText: 'Enter your nickname', controller: _namedController),
            SizedBox(height: size.height * 0.045),
            CustomButton(
                onTap: () => _socketMethods.createRoom(_namedController.text),
                text: 'Create')
          ],
        ),
      ),
    ));
  }
}
