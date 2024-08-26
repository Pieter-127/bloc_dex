import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ListLoaderWidget extends StatelessWidget {
  final double width;
  final double height;

  const ListLoaderWidget(
      {required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/animations/loading_animation.json',
        width: width, height: height, repeat: true);
  }
}
