import 'package:flutter/material.dart';
import 'package:greenit_app/screens/personal/components/body.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
    ;
  }
}
