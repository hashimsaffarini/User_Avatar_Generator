library user_avatar_generator;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_avatar_generator/core/imports.dart';

export 'package:user_avatar_generator/core/imports.dart';

class UserAvatarGenerator extends StatelessWidget {
  /// [Avatar] appearance
  final double? avatarSize;
  final BoxShape avatarShape;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final AvatarBackgroundGradient? avatarBackgroundGradient;
  final ImageProvider? backgroundImage;
  final List<BoxShadow>? boxShadow;

  /// [Text] appearance
  final String? initials;
  final String? text;
  final TextStyle? textStyle;
  final Alignment textAlignment;
  final bool isUpperCase;
  final int numberOfCharacters;
  final AvatarFontStyles? fontStyle;

  /// [Interaction]
  final void Function()? onTap;

  /// [Shortcut] generation options
  final ShortcutGenerationType shortcutGenerationType;

  const UserAvatarGenerator({
    super.key,
    this.avatarSize,
    this.avatarShape = BoxShape.circle,
    this.borderRadius,
    this.border,
    this.backgroundColor,
    this.avatarBackgroundGradient,
    this.backgroundImage,
    this.boxShadow,
    this.initials,
    this.text,
    this.textStyle,
    this.textAlignment = Alignment.center,
    this.isUpperCase = true,
    this.numberOfCharacters = 2,
    this.onTap,
    this.fontStyle,
    this.shortcutGenerationType = ShortcutGenerationType.initials,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: avatarSize ?? size.width * 0.2,
        height: avatarSize ?? size.height * 0.1,
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: avatarBackgroundGradient == null
              ? AvatarBackgroundGradient.oceanDepths.gradient
              : avatarBackgroundGradient?.gradient,
          shape: avatarShape,
          border: border,
          boxShadow: boxShadow ??
              [
                const BoxShadow(
                  blurRadius: 5,
                  color: Colors.black26,
                )
              ],
          image: backgroundImage != null
              ? DecorationImage(
                  image: backgroundImage!,
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Align(
          alignment: textAlignment,
          child: Text(
            _getText(),
            style: _getTextStyle(size),
          ),
        ),
      ),
    );
  }

  String _getText() {
    if (initials != null) {
      return initials!;
    } else if (text != null) {
      return generateTextBasedOnType(
        text!,
        shortcutGenerationType,
        isUpperCase,
      );
    }
    return '';
  }

  TextStyle _getTextStyle(Size size) {
    double baseFontSize =
        avatarSize != null ? avatarSize! * 0.4 : size.shortestSide * 0.075;

    TextStyle baseStyle = GoogleFonts.pacifico().copyWith(
      fontSize: baseFontSize,
      color: Colors.white,
    );

    final fontStyles = {
      AvatarFontStyles.protestGuerrilla: GoogleFonts.protestGuerrilla(),
      AvatarFontStyles.pacifico: GoogleFonts.pacifico(),
      AvatarFontStyles.anton: GoogleFonts.anton(),
      AvatarFontStyles.concertOne: GoogleFonts.concertOne(),
      AvatarFontStyles.bangers: GoogleFonts.bangers(),
      AvatarFontStyles.chivo: GoogleFonts.chivo(),
    };

    if (textStyle != null && fontStyle != null) {
      return textStyle!.merge(
        fontStyles[fontStyle]!.copyWith(
          fontSize: textStyle!.fontSize ?? baseFontSize,
          color: textStyle!.color ?? Colors.white,
        ),
      );
    }

    if (textStyle != null) {
      return textStyle!.copyWith(
        fontSize: textStyle!.fontSize ?? baseFontSize,
        color: textStyle!.color ?? Colors.white,
      );
    }

    if (fontStyle != null) {
      return fontStyles[fontStyle]!.copyWith(
        fontSize: baseFontSize,
        color: Colors.white,
      );
    }

    return baseStyle;
  }
}
