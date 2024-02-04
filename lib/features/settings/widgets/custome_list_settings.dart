import 'package:flutter/material.dart';

Row Contents_strings( String title ,IconData icon){
  return Row(children: [
    const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 18),
                )
                
              ],
            ),
  ],);
}