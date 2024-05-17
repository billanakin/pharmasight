import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    this.currentIndex,
    required this.title,
  });

  final int? currentIndex;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kPrimaryHeaderTextStyle,
        ),
      ],
    );
  }
}
