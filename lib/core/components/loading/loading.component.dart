import 'package:flutter/material.dart';

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
