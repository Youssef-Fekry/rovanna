import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      this.hint,
      this.textInputType,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.fieldTitle,
      this.overrideValidator = false,
      this.textEditingController,
      this.obscureText = false});

  final String? hint;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final String? fieldTitle;
  final TextEditingController? textEditingController;
  final bool overrideValidator;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          keyboardType: textInputType,
          obscureText: obscureText,
          controller: textEditingController,
          style: const TextStyle(
            decoration: TextDecoration.none,
            decorationThickness: 0,
          ),
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: Colors.grey.shade200,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(width: 0, color: Colors.transparent)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(width: 0, color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(width: 0, color: Colors.transparent)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(width: 1, color: Colors.red)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(width: 1, color: Colors.red)),
          ),
        ),
      ],
    );
  }
}
