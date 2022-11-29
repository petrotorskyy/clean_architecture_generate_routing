import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin/src/constants/sizes.dart';
import 'package:signin/src/localization/controller.dart';

import 'widgets/login_footer_widget.dart';
import 'widgets/login_header_widget.dart';
import 'widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LocaleCont());
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Section Welcome */
                LoginHeaderWidget(size: size),
                const LoginForm(),
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
