library user_avatar_generator;

import 'package:flutter/material.dart';

enum AvatarBackgroundStyle {
  style1,
  style2,
  style3,
}

class UserAvatarGenerator extends StatelessWidget {
  final String? generatedText; // The text to be generated (e.g., initials)
  final String? readyText; // Predefined text that can be used directly
  final double? avatarHeight; // Height of the avatar widget
  final double? avatarWidth; // Width of the avatar widget
  final AvatarBackgroundStyle? backgroundStyle; // Enum for background style
  final Color? backgroundColor; // Background color of the avatar
  final String? backgroundImagePath; // Path to the background image
  final Color textColor; // Color of the text inside the avatar
  final TextStyle? textStyle; // Custom text style for the avatar text
  final BoxShape avatarShape; // Shape of the avatar (e.g., circle or rectangle)
  final BoxBorder? border; // Border for the avatar
  final double? textSize; // Size of the text inside the avatar
  final Alignment textAlignment; // Alignment of the text within the avatar
  final bool
      isUpperCase; // Whether the initials should be uppercase or lowercase
  final int
      numberOfCharacters; // Number of characters to include in the initials

  const UserAvatarGenerator({
    super.key,
    this.generatedText,
    this.readyText,
    this.avatarHeight,
    this.avatarWidth,
    this.backgroundStyle, // Selected background style
    this.backgroundColor = Colors.blue,
    this.backgroundImagePath,
    this.textColor = Colors.white,
    this.textStyle,
    this.avatarShape = BoxShape.circle,
    this.border,
    this.textSize,
    this.textAlignment = Alignment.center,
    this.isUpperCase = true,
    this.numberOfCharacters = 2,
  });

  // Function to generate initials from the full name
  String generateInitials(String fullName,
      {bool isUpperCase = true, int numberOfCharacters = 2}) {
    List<String> names = fullName.trim().split(RegExp(r'\s+'));
    String initials = names.map((name) => name[0]).join();

    if (initials.length > numberOfCharacters) {
      initials = initials.substring(0, numberOfCharacters);
    }

    return isUpperCase ? initials.toUpperCase() : initials.toLowerCase();
  }

  // Function to determine the background image based on the selected style
  String? _getBackgroundImage() {
    final backgroundImages = {
      AvatarBackgroundStyle.style1: 'assets/images/back1.jpg',
      AvatarBackgroundStyle.style2: 'assets/images/back1.jpg',
      AvatarBackgroundStyle.style3: 'assets/images/back1.jpg',
    };

    return backgroundStyle != null
        ? backgroundImages[backgroundStyle]
        : backgroundImagePath;
  }

  // Function to get the text to display
  String _getText() {
    if (readyText != null) {
      return readyText!;
    } else if (generatedText != null) {
      return generateInitials(generatedText!,
          isUpperCase: isUpperCase, numberOfCharacters: numberOfCharacters);
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double calculatedAvatarHeight = avatarHeight ?? screenHeight * 0.1;
    final double calculatedAvatarWidth = avatarWidth ?? screenWidth * 0.2;
    final double calculatedTextSize = textSize ?? calculatedAvatarHeight * 0.4;

    return Container(
      width: calculatedAvatarWidth,
      height: calculatedAvatarHeight,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: avatarShape,
        border: border,
        image: _getBackgroundImage() != null
            ? DecorationImage(
                image: AssetImage(_getBackgroundImage()!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: Align(
        alignment: textAlignment,
        child: Text(
          _getText(),
          style: textStyle ??
              TextStyle(
                color: textColor,
                fontSize: calculatedTextSize,
              ),
        ),
      ),
    );
  }
}
