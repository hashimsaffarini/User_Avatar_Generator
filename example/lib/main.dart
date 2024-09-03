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
        backgroundColor: const Color(0xFFC8A8E9),
        title: const Text(
          'User Avatar Generator 🎨',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: UserAvatarGenerator(
              text: 'Free Palestine',
              shortcutGenerationType: ShortcutGenerationType.initials,
              isUpperCase: true,
              avatarSize: 100,
              avatarBackgroundGradient: AvatarBackgroundGradient.sunsetPastels,
              fontStyle: AvatarFontStyles.concertOne,
              textStyle: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
