import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/default_app_bar.dart';
import 'package:greenit_app/dummy_data/profile_data.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Profile userProfile = DemoProfilesData.userProfile;

    return Scaffold(
      appBar: DefaultAppBar(userProfile: userProfile),
      body: const Body(),
    );
  }
}
