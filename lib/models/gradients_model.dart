import 'package:flutter/material.dart';

enum AvatarBackgroundGradient {
  sunsetPastels,
  oceanDepths,
  tropicalSunset,
  forestHues,
  warmHorizon,
}

extension AvatarBackgroundGradientExtension on AvatarBackgroundGradient {
  Gradient get gradient {
    switch (this) {
      case AvatarBackgroundGradient.sunsetPastels:
        return const LinearGradient(
          colors: [
            Color(0xFFF4E7FB),
            Color(0xFFF3DCDC),
            Color(0xFFF5BCBA),
            Color(0xFFE3AADD),
            Color(0xFFC8A8E9),
            Color(0xFFC3C7F3),
          ],
          stops: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
      case AvatarBackgroundGradient.oceanDepths:
        return const LinearGradient(
          colors: [
            Color(0xFF213A57),
            Color(0xFF0B6477),
            Color(0xFF14919B),
            Color(0xFF0AD1C8),
            Color(0xFF45DFB1),
            Color(0xFF80ED99),
          ],
          stops: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
      case AvatarBackgroundGradient.tropicalSunset:
        return const LinearGradient(
          colors: [
            Color(0xFFEF476F),
            Color(0xFFF78C6B),
            Color(0xFFFFD166),
            Color(0xFF06D6A0),
            Color(0xFF118AB2),
            Color(0xFF073B4C),
          ],
          stops: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
      case AvatarBackgroundGradient.forestHues:
        return const LinearGradient(
          colors: [
            Color(0xFFE9F5DB),
            Color(0xFFCFE1B9),
            Color(0xFFB5C99A),
            Color(0xFF97A97C),
            Color(0xFF87986A),
            Color(0xFF718355),
          ],
          stops: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
      case AvatarBackgroundGradient.warmHorizon:
        return const LinearGradient(
          colors: [
            Color(0xFFA36361),
            Color(0xFFD3A29D),
            Color(0xFFE8B298),
            Color(0xFFECCC8C),
            Color(0xFFBDD1C5),
            Color(0xFF9EABA2),
          ],
          stops: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
      default:
        return const LinearGradient(
          colors: [
            Color(0xFF213A57),
            Color(0xFF0B6477),
            Color(0xFF14919B),
            Color(0xFF0AD1C8),
            Color(0xFF45DFB1),
            Color(0xFF80ED99),
          ],
          stops: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
    }
  }
}
