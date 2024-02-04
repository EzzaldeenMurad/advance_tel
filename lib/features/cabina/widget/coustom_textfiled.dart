
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

TextFormField customTextFiled({
  required String text,
  TextStyle? style,
  InputBorder? border,
  TextAlign textAlign = TextAlign.end,
  Widget? suffixIcon,
  Widget? prefixIcon,
  void Function()? onTap,
  bool readOnly = false,
  TextEditingController? controller,
  void Function(String)? onChanged,
  String? Function(String?)? validator,
  int? maxLength,
  FocusNode? focusNode,
  Widget? Function(BuildContext,
          {required int currentLength,
          required bool isFocused,
          required int? maxLength})?
      buildCounter,
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
     textDirection: TextDirection.ltr,
// initialValue: text,
      // buildCounter: buildCounter,
      // textDirection:TextDirection.rtl 
      // ,
      decoration: InputDecoration(

// counter: Text('9'),
        // counterText: '9',
        // counterText: '9',
        // floatingLabelAlignment: FloatingLabelAlignment.start,
        
        // floatingLabelStyle: const TextStyle(fontSize: 20),
        // labelText: text,

        // label: Text(text,textAlign: TextAlign.end),
        border: border,
          hintText: text,
          // hintStyle:style ,
          
        labelStyle: style,
         hintStyle:  style,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      onTap: onTap,
      onChanged: onChanged,
      validator: validator,
    );
