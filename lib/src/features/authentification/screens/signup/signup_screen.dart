import 'package:flutter/material.dart';
import 'package:signin/src/common_widgets/form/form_header_widget.dart';
import 'package:signin/src/constants/image_strings.dart';
import 'package:signin/src/constants/sizes.dart';
import 'package:signin/src/constants/text_strings.dart';
import 'package:signin/src/routing/router.dart';

import 'widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                  size: size,
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle),
              const SignUpFormWidget(),
              Column(
                children: [
                  const Text("OR"),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: null,
                      icon: const Image(
                        image: AssetImage(tGoogleLogoImage),
                        width: 20.0,
                      ), //icon data for elevated button
                      label: Text(tSignInWithGoogle.toUpperCase()),
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: tFormHeight - 30,
                  ),
                  TextButton(
                    onPressed: () {
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));*/
                      NavigationRoutes().push(context, Routes.SignUpScreen);
                    },
                    child: InkWell(
                      onTap: () {
                        //Navigator.pop(context);
                        NavigationRoutes().pop(context);
                      },
                      child: Text.rich(
                        TextSpan(
                          text: tAlreadyHaveAnAccount,
                          style: Theme.of(context).textTheme.bodyText1,
                          children: [
                            TextSpan(
                              text: tLogin.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
