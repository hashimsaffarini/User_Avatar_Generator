# 🎨 User Avatar Generator

[![pub package](https://img.shields.io/pub/v/user_avatar_generator.svg?color=success&style=flat-square)](https://pub.dartlang.org/packages/user_avatar_generator)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-success.svg?style=flat-square)](https://github.com/HashimSaffarini/user_avatar_generator/pulls)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

The **User Avatar Generator** package allows you to efficiently create avatar text tailored to your needs, such as generating initials, abbreviations, or symbolic representations. This ensures that user profiles in your Flutter applications are professional and meaningful with minimal effort.

## Features
- `Generate avatar text` using initials, uppercase letters, or custom symbols and numbers.
- `Customizable avatars` with different shapes, sizes, and borders.
- `Gradient backgrounds` with both predefined and custom options.
- `Multiple font styles` with the ability to merge custom styles.
- `Animated transitions` for smooth visual effects.
- `Support for flexible` background images or gradient backgrounds.

## ScreenShot

![Simulator Screenshot - iPhone 15 Pro Max - 2024-09-03 at 15 59 35](https://github.com/user-attachments/assets/df7aca57-d2c1-44de-a1aa-026fb02b04cb)

## 📦 Installation

Add the following to your `pubspec.yaml` under dependencies:

```yaml
dependencies:
  user_avatar_generator: ^0.0.1
```
## 📚 Usage

```dart
UserAvatarGenerator(
  text: 'Free Palestine🇵🇸',
  shortcutGenerationType: ShortcutGenerationType.initials,
  isUpperCase: true,
  avatarSize: 140,
  avatarBackgroundGradient: AvatarBackgroundGradient.sunsetPastels,
  fontStyle: AvatarFontStyles.concertOne,
  textStyle: TextStyle(
    fontSize: 80,
    fontWeight: FontWeight.bold,
  ),
)
```
## 🐛 Bugs/Requests

If you encounter any problems, feel free to open an issue. If you feel the library is
missing a feature, please raise a ticket on Github and I'll look into it.
Pull requests are also welcome.

## ❤️ Support

#### **Hashim Saffarini**

<p align="center">
  <a href="https://linkedin.com/in/hashim-saffarini/" target="_blank">
    <img src="https://github.com/aritraroy/social-icons/blob/master/linkedin-icon.png?raw=true" alt="LinkedIn" width="50" height="50">
  </a>
  <a href="https://facebook.com/hashim.saffarini.3/" target="_blank">
    <img src="https://github.com/aritraroy/social-icons/blob/master/facebook-icon.png?raw=true" alt="Facebook" width="50" height="50">
  </a>
  <a href="https://instagram.com/hashim.saffarini1/" target="_blank">
    <img src="https://github.com/aritraroy/social-icons/blob/master/instagram-icon.png?raw=true" alt="Instagram" width="50" height="50">
  </a>
</p>

<p align="center">If you find this package helpful, consider following me on social media for more updates and contributions.</p>



