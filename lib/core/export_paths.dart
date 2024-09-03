/// This is the main library file for the `user_avatar_generator` package.
///
/// It exports various components necessary for generating user avatars
/// with customizable options such as gradients, fonts, and shortcuts.

library user_avatar_generator;

// Exporting the model for gradients used in avatar backgrounds.
// This includes predefined gradient options and custom gradient handling.
export 'package:user_avatar_generator/models/gradients_model.dart';

// Exporting the model for font styles used in avatars.
// This includes different font styles and merging custom styles.
export 'package:user_avatar_generator/models/fonts_model.dart';

// Exporting the main class for generating user avatars.
// This class provides the primary functionality for creating avatars
// with text, gradients, fonts, and other customizable features.
export 'package:user_avatar_generator/user_avatar_generator.dart';

// Exporting the model for shortcut generation types and transformation rules.
// This includes methods for generating initials, uppercase letters,
// and symbol-based transformations.
export 'package:user_avatar_generator/models/shortcut_model.dart';
