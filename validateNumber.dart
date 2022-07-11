import 'dart:io';

void main() {
  var numb = stdin.readLineSync();
  print(validateNumber(numb.toString()));
}

bool validateNumber(String numberIDN) {
  if (numberIDN.startsWith('08') || numberIDN.startsWith('+62')) return true;
  return false;
}
