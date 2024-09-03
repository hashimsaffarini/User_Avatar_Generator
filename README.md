# 🎨 User Avatar Generator

[![pub package](https://img.shields.io/pub/v/user_avatar_generator.svg?color=success&style=flat-square)](https://pub.dartlang.org/packages/user_avatar_generator)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-success.svg?style=flat-square)](https://github.com/HashimSaffarini/user_avatar_generator/pulls)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

The **User Avatar Generator** package allows you to efficiently create avatar text tailored to your needs, such as generating initials, abbreviations, or symbolic representations. This ensures that user profiles in your Flutter applications are professional and meaningful with minimal effort.

## 🎯 Features
- `Generate avatar text` using initials, uppercase letters, or custom symbols and numbers.
- `Customizable avatars` with different shapes, sizes, and borders.
- `Gradient backgrounds` with both predefined and custom options.
- `Multiple font styles` with the ability to merge custom styles.
- `Animated transitions` for smooth visual effects.
- `Support for flexible` background images or gradient backgrounds.

### 🔠 Text Generation Methods
- **Initials Generation (`initials`)**: Extracts the first letter of each word in the input text (e.g., "John Doe" becomes "JD"). This is done by splitting the input text by spaces, taking the first character of each word, and joining them together. The result can be limited to a specific number of characters and converted to uppercase or lowercase based on the provided settings.

- **Uppercase Letters (`uppercaseOnly`)**: Filters the input text to only include uppercase letters. This can be useful for creating avatars that display acronyms or similar text.

- **First and Last Letters (`firstAndLast`)**: Combines the first letter of the first word and the first letter of the last word in the input text (e.g., "John Doe" becomes "JD"). This approach is particularly useful for creating monograms.

- **Symbols and Numbers Transformation (`withSymbols`)**: This method replaces certain letters and common words with numbers and symbols to create a more stylized or compact representation of the text. For example, "For You" might become "4U". This transformation is driven by a predefined mapping of letters and words to their symbolic equivalents.

## 📸 ScreenShot

<img src="https://github.com/hashimsaffarini/User_Avatar_Generator/blob/main/lib/assets/images/screen.png" width="400">

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
<p>
<a href="https://linkedin.com/in/hashim-saffarini/"><img src="https://github.com/aritraroy/social-icons/blob/master/linkedin-icon.png?raw=true" width="60"></a>
<a href="https://facebook.com/hashim.saffarini.3/"><img src="https://github.com/aritraroy/social-icons/blob/master/facebook-icon.png?raw=true" width="60"></a>
<a href="https://instagram.com/hashim.saffarini1/"><img src="https://github.com/aritraroy/social-icons/blob/master/instagram-icon.png?raw=true" width="60"></a>
</p>

If you like this package, consider giving it a ⭐️ on [GitHub](https://github.com/HashimSaffarini/user_avatar_generator)!


