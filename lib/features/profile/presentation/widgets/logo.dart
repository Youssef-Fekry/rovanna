import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/media.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Media.logo);
  }
}
