library user_avatar_generator;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_avatar_generator/core/imports.dart';

export 'package:user_avatar_generator/core/imports.dart';

class UserAvatarGenerator extends StatelessWidget {
  // Avatar appearance
  final double? avatarSize;
  final BoxShape avatarShape;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final AvatarBackgroundGradient?
      backgroundGradientEnum; // New: Enum for gradient
  final String? backgroundImage;

  // Text appearance
  final String? initials;
  final String? text;
  final TextStyle? textStyle;
  final Alignment textAlignment;
  final bool isUpperCase;
  final int numberOfCharacters;
  final AvatarFontStyles? fontStyle;

  // Interaction
  final void Function()? onTap;

  const UserAvatarGenerator({
    super.key,
    this.avatarSize,
    this.avatarShape = BoxShape.circle,
    this.borderRadius,
    this.border,
    this.backgroundColor = Colors.blue,
    this.backgroundGradientEnum,
    this.backgroundImage,
    this.initials,
    this.text,
    this.textStyle,
    this.textAlignment = Alignment.center,
    this.isUpperCase = true,
    this.numberOfCharacters = 2,
    this.onTap,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: avatarSize ?? MediaQuery.of(context).size.width * 0.2,
        height: avatarSize ?? MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient:
              backgroundGradientEnum?.gradient, // Use the enum to get gradient
          shape: avatarShape,
          border: border,
          image: backgroundImage != null
              ? DecorationImage(
                  image: AssetImage(
                    backgroundImage!,
                    package: 'user_avatar_generator',
                  ),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Align(
          alignment: textAlignment,
          child: Text(
            _getText(),
            style: _getTextStyle(),
          ),
        ),
      ),
    );
  }

  String _getText() {
    return initials ?? _generateInitials(text ?? '');
  }

  String _generateInitials(String fullName) {
    List<String> names = fullName.trim().split(RegExp(r'\s+'));
    String initials = names.map((name) => name[0]).join();
    return isUpperCase
        ? initials.substring(0, numberOfCharacters).toUpperCase()
        : initials.substring(0, numberOfCharacters).toLowerCase();
  }

  TextStyle _getTextStyle() {
    final fontStyles = {
      AvatarFontStyles.font1: GoogleFonts.protestGuerrilla(),
      AvatarFontStyles.font2: GoogleFonts.roboto(),
      AvatarFontStyles.font3: GoogleFonts.robotoMono(),
    };

    return (textStyle ??
            fontStyles[fontStyle] ??
            GoogleFonts.roboto().copyWith(fontSize: avatarSize ?? 20.0))
        .copyWith(
      fontSize: avatarSize != null ? avatarSize! * 0.4 : 20.0,
      color: textStyle?.color ?? Colors.white,
    );
  }
}
