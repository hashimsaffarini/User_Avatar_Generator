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
              text: 'Free Palestine', // The text to display in the avatar
              shortcutGenerationType: ShortcutGenerationType
                  .initials, // Method for generating avatar text
              isUpperCase: true, // Convert text to uppercase
              avatarSize: 100, // Size of the avatar
              avatarBackgroundGradient: AvatarBackgroundGradient
                  .sunsetPastels, // Gradient background for the avatar
              fontStyle: AvatarFontStyles.concertOne, // Font style for the text
              textStyle: TextStyle(
                fontSize: 60, // Font size for the avatar text
                fontWeight: FontWeight.bold, // Font weight for the avatar text
              ),
            ),
          ),
        ],
      ),
    );
  }
}
