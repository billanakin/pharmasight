import 'package:flutter/material.dart';
import 'package:greenit_app/components/fields/search_bar.dart';
import 'package:greenit_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: kDefaultHorizontalPadding,
              right: kDefaultHorizontalPadding,
            ),
            child: const Column(
              children: [
                Expanded(
                  child: CustomSearchBar(
                    hintText: 'Search for RHU Medicine and Supplies',
                    searchController: null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
