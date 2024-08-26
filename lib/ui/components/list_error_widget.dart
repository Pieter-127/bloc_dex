import 'package:flutter/material.dart';

class ListErrorWidget extends StatelessWidget {
  final VoidCallback callback;

  const ListErrorWidget({required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Something went wrong",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 8,
        ),
        ElevatedButton(onPressed: callback, child: (const Text("Retry"))),
      ],
    );
  }
}
