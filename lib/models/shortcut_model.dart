/// Enum representing different shortcut generation types for user names.
enum ShortcutGenerationType {
  /// Generate initials from the user's full name.
  initials,

  /// Generate only uppercase letters from the user's full name.
  uppercaseOnly,

  /// Generate the first and last letter of the user's full name.
  firstAndLast,

  /// Generate a shortcut with numbers and symbols based on the user's full name.
  withSymbols,
}

/// Generates a text shortcut based on the selected [ShortcutGenerationType].
///
/// Depending on the [shortcutGenerationType], this function will generate a
/// text shortcut from the provided [fullName]. The text can be transformed
/// to uppercase or lowercase based on the [isUpperCase] flag.
///
/// [fullName] is the complete name from which the shortcut will be generated.
/// [shortcutGenerationType] determines the type of shortcut to generate.
/// [isUpperCase] specifies if the resulting text should be in uppercase.
///
/// Returns the generated text shortcut.
String generateTextBasedOnType(String fullName,
    ShortcutGenerationType shortcutGenerationType, bool isUpperCase) {
  switch (shortcutGenerationType) {
    case ShortcutGenerationType.initials:
      return _generateInitials(fullName, isUpperCase: isUpperCase);

    case ShortcutGenerationType.uppercaseOnly:
      return _generateUppercaseLetters(fullName);

    case ShortcutGenerationType.firstAndLast:
      return _generateFirstAndLastLetters(fullName, isUpperCase: isUpperCase);

    case ShortcutGenerationType.withSymbols:
      return _generateWithNumbersAndSymbols(fullName, isUpperCase: isUpperCase);

    default:
      return _generateInitials(fullName, isUpperCase: isUpperCase);
  }
}

/// Generates initials from the provided [fullName].
///
/// The initials are derived from the first letter of each part of the full name.
/// The result can be converted to uppercase or lowercase based on the [isUpperCase] flag.
///
/// [fullName] is the complete name from which the initials will be extracted.
/// [isUpperCase] specifies if the resulting initials should be in uppercase.
///
/// Returns the generated initials.
String _generateInitials(String fullName, {bool isUpperCase = true}) {
  List<String> names = fullName.trim().split(RegExp(r'\s+'));
  String initials = names.map((name) => name[0]).join();
  return isUpperCase ? initials.toUpperCase() : initials.toLowerCase();
}

/// Generates uppercase letters from the provided [fullName].
///
/// Only the uppercase letters from the full name are extracted.
///
/// [fullName] is the complete name from which uppercase letters will be extracted.
///
/// Returns a string of uppercase letters.
String _generateUppercaseLetters(String fullName) {
  return RegExp(r'[A-Z]').allMatches(fullName).map((e) => e.group(0)).join();
}

/// Generates the first and last letter of the provided [fullName].
///
/// The result can be converted to uppercase or lowercase based on the [isUpperCase] flag.
///
/// [fullName] is the complete name from which the first and last letters will be extracted.
/// [isUpperCase] specifies if the resulting letters should be in uppercase.
///
/// Returns the first and last letters as a string.
String _generateFirstAndLastLetters(String fullName,
    {bool isUpperCase = true}) {
  List<String> names = fullName.trim().split(RegExp(r'\s+'));
  String initials = "${names.first[0]}${names.last[0]}";
  return isUpperCase ? initials.toUpperCase() : initials.toLowerCase();
}

/// Generates a shortcut with numbers and symbols based on the provided [fullName].
///
/// The full name is transformed using a set of predefined replacements for words and characters.
/// The result can be converted to uppercase or lowercase based on the [isUpperCase] flag.
///
/// [fullName] is the complete name to be transformed.
/// [isUpperCase] specifies if the resulting text should be in uppercase.
///
/// Returns the transformed text with numbers and symbols.
String _generateWithNumbersAndSymbols(
  String fullName, {
  bool isUpperCase = true,
}) {
  final Map<String, String> replacements = {
    // Mapping of words to symbols or numbers
    'A': '4',
    'E': '3',
    'I': '1',
    'O': '0',
    'S': '5',
    'G': '9',
    'T': '7',
    'B': '8',
    'L': '1',
    'YOU': 'U',
    'FOR': '4',
    'for': '4',
    'you': 'U',
    'and': '&',
    'AND': '&',
    'THANK': 'THX',
    'thank': 'thx',
    'please': 'pls',
    'PLEASE': 'PLS',
    'to': '2',
    'TO': '2',
    'at': '@',
    'AT': '@',
    'be': 'b',
    'BE': 'B',
    'see': 'c',
    'SEE': 'C',
    'are': 'r',
    'ARE': 'R',
    'before': 'b4',
    'BEFORE': 'B4',
    'great': 'gr8',
    'GREAT': 'GR8',
    'late': 'l8',
    'LATE': 'L8',
    'mate': 'm8',
    'MATE': 'M8',
    'okay': 'ok',
    'OKAY': 'OK',
    'people': 'ppl',
    'PEOPLE': 'PPL',
    'because': 'cuz',
    'BECAUSE': 'CUZ',
    'really': 'rly',
    'REALLY': 'RLY',
    'right': 'ryt',
    'RIGHT': 'RYT',
    'night': 'nite',
    'NIGHT': 'NITE',
    'love': 'luv',
    'LOVE': 'LUV',
    'with': 'w/',
    'WITH': 'W/',
    'without': 'w/o',
    'WITHOUT': 'W/O',
    'why': 'y',
    'WHY': 'Y',
    'what': 'wut',
    'WHAT': 'WUT',
    'message': 'msg',
    'MESSAGE': 'MSG',
    'number': 'no.',
    'NUMBER': 'NO.',
  };

  String result = fullName.toUpperCase();

  replacements.forEach((key, value) {
    result =
        result.replaceAll(RegExp('\\b$key\\b', caseSensitive: false), value);
  });
  result = result.replaceAll(' ', '');

  return isUpperCase ? result : result.toLowerCase();
}
