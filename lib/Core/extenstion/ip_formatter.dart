import 'package:flutter/services.dart';

class IpFormatter extends TextInputFormatter {
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      print(true);
      return newValue;
    }
    String newText = newValue.text;

    if (newValue.text.length == 3 ||
        newValue.text.length == 7 ||
        newValue.text.length == 9) {
      newText = newValue.text + '.';
    }

    return newValue.copyWith(
        text: newText,
        selection: new TextSelection.collapsed(offset: newText.length));
  }
}
