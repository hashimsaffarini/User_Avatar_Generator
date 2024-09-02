import 'package:flutter/material.dart';
import 'package:user_avatar_generator/user_avatar_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Avatar Generator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('User Avatar Generator'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: UserAvatarGenerator(
              text: 'United States of America',
              fontStyle: AvatarFontStyles.font1,
              avatarSize: 80,
              textStyle: TextStyle(
                fontSize: 50,
              ),
              backgroundGradientEnum: AvatarBackgroundGradient.bluePurple,
            ),
          ),
        ],
      ),
    );
  }
}
