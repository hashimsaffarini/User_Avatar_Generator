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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: UserAvatarGenerator(
              generatedText: 'United States of America',
              avatarHeight: 200.0,
              avatarWidth: 100.0,
              numberOfCharacters: 3,
              isUpperCase: false,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              backgroundStyle: AvatarBackgroundStyle.style1,
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
          ),
        ],
      ),
    );
  }
}
