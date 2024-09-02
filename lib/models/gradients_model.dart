import 'package:flutter/material.dart';

enum AvatarBackgroundGradient {
  bluePurple,
  redOrange,
  greenYellow,
  pinkBlue,
}

extension AvatarBackgroundGradientExtension on AvatarBackgroundGradient {
  Gradient get gradient {
    switch (this) {
      case AvatarBackgroundGradient.bluePurple:
        return const LinearGradient(
          colors: [Colors.blue, Colors.purple],
        );
      case AvatarBackgroundGradient.redOrange:
        return const LinearGradient(
          colors: [Colors.red, Colors.orange],
        );
      case AvatarBackgroundGradient.greenYellow:
        return const LinearGradient(
          colors: [Colors.green, Colors.yellow],
        );
      case AvatarBackgroundGradient.pinkBlue:
        return const LinearGradient(
          colors: [Colors.pink, Colors.blue],
        );
      default:
        return const LinearGradient(
          colors: [Colors.grey, Colors.black],
        );
    }
  }
}
