import 'package:flutter/material.dart';
import 'package:signin/src/constants/sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: const [
            SizedBox(
              height: tDefaultSize * 4,
            )
          ],
        ),
      ),
    );
  }
}
