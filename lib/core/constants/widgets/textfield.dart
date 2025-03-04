import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final String label;
  final String? errorText;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? toggleObscure;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final int? maxLength;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted,
    this.onChanged,
    required this.label,
    this.errorText,
    this.isPassword = false,
    this.obscureText = false,
    this.toggleObscure,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label, style: TextStyle(color: Colors.black, fontSize: 16)),
            Text("*", style: TextStyle(color: Colors.red, fontSize: 16)),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          textInputAction: textInputAction,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          obscureText: isPassword ? obscureText : false,
          keyboardType: keyboardType,
          maxLength: maxLength,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                  color: errorText != null ? Colors.red : Colors.grey,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                  color: errorText != null ? Colors.red : Colors.blue,
                  width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                  color: errorText != null ? Colors.red : Colors.grey,
                  width: 1),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined),
                    onPressed: toggleObscure,
                  )
                : null,
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(errorText!,
                style: TextStyle(color: Colors.red, fontSize: 12)),
          ),
      ],
    );
  }
}
