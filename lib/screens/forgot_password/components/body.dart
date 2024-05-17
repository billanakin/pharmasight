import 'package:flutter/material.dart';
import 'package:greenit_app/components/forms/no_account.dart';
import 'package:greenit_app/components/forms/header_description.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/forgot_password/components/forgot_password_form.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: Column(
              children: [
                VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
                const HeaderDescription(
                  title: 'Forgot Password?',
                  text:
                      "Please enter your account's email address,\n and we'll send you reset instructions.",
                ),
                VerticalSpacing(of: SizeConfig.screenHeight * 0.1),
                const ForgotPasswordForm(),
                VerticalSpacing(of: SizeConfig.screenHeight * 0.1),
                const NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
