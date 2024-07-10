import 'package:flutter/material.dart';

import '../responsive/responsive.dart';
import '../widget/common_button.dart';
import '../widget/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _namedController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _namedController.dispose();
    _gameIdController.dispose();
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
              'Join   Room',
              style: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: size.height * 0.02),
            CustomTextField(
                hintText: 'Enter your nickname', controller: _namedController),
            SizedBox(height: 21),
            CustomTextField(
                hintText: 'Enter Game ID', controller: _gameIdController),
            SizedBox(height: size.height * 0.045),
            CustomButton(onTap: () {}, text: 'Join')
          ],
        ),
      ),
    ));
    ;
  }
}
