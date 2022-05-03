import 'dart:io';

var morse_code = [
  ".-",
  "-...",
  "-.-.",
  "-..",
  ".",
  "..-.",
  "--.",
  "....",
  "..",
  ".---",
  "-.-",
  ".-..",
  "--",
  "-.",
  "---",
  ".--.",
  "--.-",
  ".-.",
  "...",
  "-",
  "..-",
  "...-",
  ".--",
  "-..-",
  "-.--",
  "--.."
];
var alphabet = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z"
];

void main() {
  var tobeDecoded = stdin.readLineSync();
  morse_decoder(tobeDecoded, "");
}

bool is_valid_morse(var tobeDecoded) {
  for (var i = 0; i < 26; i++) if (tobeDecoded == morse_code[i]) return true;
  return false;
}

void morse_decoder(var totext, var translation) {
  if (totext.length == 0)
    print(translation);
  else {
    for (int i = 0; i < 26; i++) {
      if (totext.startsWith(morse_code[i])) {
        var currentTranslation = translation + alphabet[i];

        var toTranslate = totext.substring(morse_code[i].length);

        morse_decoder(toTranslate, currentTranslation);
      }
    }
  }
}
