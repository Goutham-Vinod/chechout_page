// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.controller,
    this.enableCreditCardNumberFormatting,
    this.enableCreditCardExpDateFormatting,
    this.inputFormatters,
    this.maxInputLength,
    this.keyboardType,
  }) : super(key: key);

  final String? hintText;
  final Function? onChanged;
  final TextEditingController? controller;
  final bool? enableCreditCardNumberFormatting;
  final bool? enableCreditCardExpDateFormatting;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxInputLength;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter> textInputFormatter = [];

    if (enableCreditCardNumberFormatting == true) {
      textInputFormatter = [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(maxInputLength ?? 16),
        CreditCardNumberFormater(),
      ];
    } else if (enableCreditCardExpDateFormatting == true) {
// Expiry date formatting here
      textInputFormatter = [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(maxInputLength ?? 4),
        CreditCardExpDateFormater(),
      ];
    } else {
      if (maxInputLength == null) {
        textInputFormatter = [...?inputFormatters];
      } else {
        textInputFormatter = [LengthLimitingTextInputFormatter(maxInputLength)];
      }
    }

    return TextFormField(
      controller: controller,
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!();
        }
      },
      inputFormatters: textInputFormatter,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: hintText,
          isCollapsed: true,
          hintStyle: const TextStyle(color: Colors.white30)),
    );
  }
}

class CreditCardNumberFormater extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String enteredData = newValue.text; // get data enter by user in textField
    StringBuffer buffer = StringBuffer();
    for (int index = 0; index < enteredData.length; index++) {
      // add each character into String buffer
      buffer.write(enteredData[index]);
      int nextIndex = index + 1;
      if (nextIndex % 4 == 0 && enteredData.length != nextIndex) {
        // add space after 4th digit
        buffer.write(" ");
      }
    }

    return TextEditingValue(
        text: buffer.toString(), // final generated credit card number
        selection: TextSelection.collapsed(
            offset: buffer.toString().length) // keep the cursor at end
        );
  }
}

class CreditCardExpDateFormater extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String enteredData = newValue.text; // get data enter by user in textField
    StringBuffer buffer = StringBuffer();
    for (int index = 0; index < enteredData.length; index++) {
      // add each character into String buffer
      buffer.write(enteredData[index]);
      int nextIndex = index + 1;
      if (nextIndex == 2 && enteredData.length != nextIndex) {
        // add space after 4th digit
        buffer.write("/");
      }
    }

    return TextEditingValue(
        text: buffer.toString(), // final generated credit card number
        selection: TextSelection.collapsed(
            offset: buffer.toString().length) // keep the cursor at end
        );
  }
}
