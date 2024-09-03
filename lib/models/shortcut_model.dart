enum ShortcutGenerationType {
  initials,
  uppercaseOnly,
  firstAndLast,
  withSymbols,
}

String generateTextBasedOnType(String fullName,
    ShortcutGenerationType shortcutGenerationType, isUpperCase) {
  switch (shortcutGenerationType) {
    case ShortcutGenerationType.initials:
      return _generateInitials(fullName);
    case ShortcutGenerationType.uppercaseOnly:
      return _generateUppercaseLetters(fullName);
    case ShortcutGenerationType.firstAndLast:
      return _generateFirstAndLastLetters(fullName);
    case ShortcutGenerationType.withSymbols:
      return _generateWithNumbersAndSymbols(fullName, isUpperCase: isUpperCase);

    default:
      return _generateInitials(fullName);
  }
}

String _generateInitials(String fullName) {
  List<String> names = fullName.trim().split(RegExp(r'\s+'));
  String initials = names.map((name) => name[0]).join();
  return initials.toUpperCase();
}

String _generateUppercaseLetters(String fullName) {
  return RegExp(r'[A-Z]').allMatches(fullName).map((e) => e.group(0)).join();
}

String _generateFirstAndLastLetters(String fullName) {
  List<String> names = fullName.trim().split(RegExp(r'\s+'));
  return "${names.first[0]}${names.last[0]}".toUpperCase();
}

String _generateWithNumbersAndSymbols(
  String fullName, {
  bool isUpperCase = true,
}) {
  final Map<String, String> replacements = {
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
