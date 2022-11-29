import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPassword,
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: tDefaultSize,
            ),
            ForgetPasswordWidget(
              btnIcon: Icons.mail_outline_outlined,
              title: tEmail,
              subTitle: tResetViaEMail,
              onTap: () {},
            ),
            const SizedBox(
              height: 10.0,
            ),
            ForgetPasswordWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
