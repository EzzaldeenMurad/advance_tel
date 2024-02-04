import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../utiles/size_config.dart';

TextFormField customTextFiledd({
  required String text,
  TextStyle? style,
  InputBorder? border,
  TextAlign textAlign = TextAlign.end,
  Widget? suffixIcon,
  Widget? prefixIcon,
  Color? fillColor,
  void Function()? onTap,
  bool readOnly = false,
    bool obscureText=false,
  TextEditingController? controller,
  void Function(String)? onChanged,
   //String? Function(String?)? validator,
  final FormFieldValidator<String>? validator,
  int? maxLength,
  FocusNode? focusNode, required String text1,
}) =>
    TextFormField(
      style: style,
      readOnly: readOnly,
      controller: controller,
      textAlign: textAlign,
      autofocus: T,
      // textAlignVertical: TextAlignVertical.top,
      maxLength: maxLength,
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        floatingLabelStyle: TextStyle(
          fontSize: SizeConfig.defaultSize! * 2.2,
        ),
         filled: true,
    fillColor:fillColor,
        label: Text(text),
        border: border,
        // hintText: text,
        labelStyle: style,
        // hintStyle:  style,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      onTap: onTap,
      onChanged: onChanged,
       obscureText:obscureText,
      validator: validator,
      
    );
