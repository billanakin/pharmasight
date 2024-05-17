import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/primary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class ResetEmailScreen extends StatelessWidget {
  const ResetEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
                  Text(
                    'Reset Email Sent',
                    style: kH2TextStyle,
                  ),
                  const VerticalSpacing(of: 10),
                  Text(
                    "We've sent an email to your account's address with\nreset instructions. Please check your inbox shortly.",
                    style: kPrimaryBodyTextStyle.copyWith(
                      color: kSecondaryBodyTextColor,
                    ),
                  ),
                  VerticalSpacing(of: SizeConfig.screenHeight * 0.1),
                  PrimaryButton(
                    text: 'Send Again',
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
