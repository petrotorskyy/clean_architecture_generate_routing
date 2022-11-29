import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin/src/localization/app_localizations.dart';
import 'package:signin/src/localization/controller.dart';
import 'package:signin/src/routing/router.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LocaleCont());
    print(LocaleCont().locale);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: null,
            icon: const Image(
              image: AssetImage(tGoogleLogoImage),
              width: 20.0,
            ), //icon data for elevated button
            label: const Text(tSignInWithGoogle),
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
            ),
          ),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
          onPressed: () {
            /*Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));*/
            NavigationRoutes().push(context, Routes.SignUpScreen);
          },
          child: Text.rich(
            TextSpan(
              text: AppLocalization.of(context)
                  .getTranslatedValue("tDontHaveAnAccount")
                  .toString(),
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(
                  //text: tSignup,
                  text: AppLocalization.of(context)
                      .getTranslatedValue("tSignup")
                      .toString(),
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
