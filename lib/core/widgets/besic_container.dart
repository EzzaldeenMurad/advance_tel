import 'package:flutter/material.dart';

class BesicContainer {
  Container besiccontainer() {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(36),
          ),
          color: Colors.blue),
    );
  }
}
