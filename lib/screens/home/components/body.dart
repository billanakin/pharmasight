import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:greenit_app/components/buttons/secondary_button.dart';
import 'package:greenit_app/components/fields/search_bar.dart';
import 'package:greenit_app/components/posts/section_header.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/components/text/inline_text_divider.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/profile/components/flexible_space_content.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: kDefaultHorizontalPadding,
              right: kDefaultHorizontalPadding,
              top: kDefaultHorizontalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchBar(
                  hintText: 'Search for RHU Medicine and Supplies',
                  searchController: null,
                ),
                const VerticalSpacing(of: 20),
                buildPromoCard(),
                const VerticalSpacing(of: 20),
                const UploadPrescription(),
                const VerticalSpacing(of: 20),
                const SectionHeader(title: 'Categories'),
                const VerticalSpacing(of: 10),
                buildCategoriesScrollable(),
                const VerticalSpacing(of: 20),
                const SectionHeader(title: 'Nearby RHUs'),
                const VerticalSpacing(of: 10),
                buildRhuScrollable(),
                const VerticalSpacing(of: 20),
                const SectionHeader(title: 'Browse'),
                const VerticalSpacing(of: 10),
                buildBrowseScrollable(itemWidth, itemHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GridView buildBrowseScrollable(double itemWidth, double itemHeight) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: itemWidth / itemHeight,
      mainAxisSpacing: getProportionateScreenHeight(10),
      crossAxisSpacing: getProportionateScreenWidth(10),
      crossAxisCount: 2,
      children: List.generate(
        4,
        (index) => GridTile(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenHeight(10),
            ),
            height: getProportionateScreenHeight(600),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: kPrimaryBorderColor,
                width: 1,
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(120),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      'assets/images/logo/Greenit_launcher_icon.png',
                    ),
                  ),
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 9,
                      backgroundColor: kPrimaryBorderColor,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundImage: AssetImage(
                          'assets/images/logo/Greenit_launcher_icon.png',
                        ),
                      ),
                    ),
                    const HorizontalSpacing(of: 5),
                    Text(
                      'Alfonso Rural Health Unit',
                      style: kSecondaryBodyTextStyle,
                    ),
                  ],
                ),
                const VerticalSpacing(of: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Aspirin Tablets',
                    style: kPrimaryBodyTextStyle.copyWith(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '325 mg | 24 in stock',
                    style: kSecondaryBodyTextStyle,
                  ),
                ),
                const VerticalSpacing(of: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Free',
                    textAlign: TextAlign.right,
                    style: kPrimaryHeaderTextStyle.copyWith(
                      color: kPrimaryActiveColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView buildRhuScrollable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            5,
            (index) => Padding(
              padding: EdgeInsets.only(
                right: getProportionateScreenWidth(10),
              ),
              child: InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(240),
                      height: getProportionateScreenHeight(170),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: kDefaultHorizontalPadding,
                                vertical: kDefaultVerticalPadding,
                              ),
                              width: getProportionateScreenWidth(250),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                color: Color(0xFFF079C9D),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(10),
                                vertical: kDefaultVerticalPadding,
                              ),
                              width: getProportionateScreenWidth(250),
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: kPrimaryBorderColor,
                                    width: 1,
                                  ),
                                  bottom: BorderSide(
                                    color: kPrimaryBorderColor,
                                    width: 1,
                                  ),
                                  left: BorderSide(
                                    color: kPrimaryBorderColor,
                                    width: 1,
                                  ),
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const VerticalSpacing(of: 25),
                                  Text(
                                    'Alfonso Rural Health Unit',
                                    style: kPrimaryBodyTextStyle.copyWith(
                                      fontFamily: 'Helvetica',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Burgos, Alfonso, Cavite',
                                    style: kSecondaryBodyTextStyle,
                                  ),
                                  const VerticalSpacing(of: 15),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.schedule_outlined,
                                        size: 15,
                                        color: kPrimaryBorderColor,
                                      ),
                                      const HorizontalSpacing(of: 5),
                                      Text(
                                        '30 - 45 min',
                                        style: kSecondaryBodyTextStyle,
                                      ),
                                      const HorizontalSpacing(of: 5),
                                      const InlineTextDivider(),
                                      const HorizontalSpacing(of: 5),
                                      const Icon(
                                        Icons.delivery_dining_outlined,
                                        size: 15,
                                      ),
                                      const HorizontalSpacing(of: 5),
                                      Text(
                                        '₱ 50.00',
                                        style: kSecondaryBodyTextStyle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      left: 10,
                      child: CircleAvatar(
                        radius: 31,
                        backgroundColor: kPrimaryBorderColor,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/images/logo/Greenit_launcher_icon.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView buildCategoriesScrollable() {
    final List<Map<String, dynamic>> categoriesData = [
      {
        "icon": const Icon(
          Icons.medication_rounded,
          color: kPrimaryActiveColor,
          size: 40,
        ),
        "label": "Medicine",
        "press": () {},
      },
      {
        "icon": const Icon(
          Icons.vaccines,
          color: kPrimaryActiveColor,
          size: 40,
        ),
        "label": "Insulin",
        "press": () {},
      },
      {
        "icon": const Icon(
          Icons.medication_liquid_outlined,
          color: kPrimaryActiveColor,
          size: 40,
        ),
        "label": "Antibiotics",
        "press": () {},
      },
      {
        "icon": const Icon(
          Icons.science_outlined,
          color: kPrimaryActiveColor,
          size: 40,
        ),
        "label": "Lab Test",
        "press": () {},
      },
      {
        "icon": const Icon(
          Icons.design_services_rounded,
          color: kPrimaryActiveColor,
          size: 40,
        ),
        "label": "Services",
        "press": () {},
      },
      {
        "icon": const Icon(
          Icons.inventory_2_outlined,
          color: kPrimaryActiveColor,
          size: 40,
        ),
        "label": "Supplies",
        "press": () {},
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            categoriesData.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                right: getProportionateScreenWidth(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: categoriesData[index]['press'],
                    child: Container(
                      height: getProportionateScreenHeight(75),
                      width: getProportionateScreenWidth(75),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFFB0B0).withOpacity(0.5),
                      ),
                      child: categoriesData[index]['icon'],
                    ),
                  ),
                  const VerticalSpacing(of: 10),
                  Text(
                    categoriesData[index]['label'],
                    style: kPrimaryBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildPromoCard() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultHorizontalPadding,
        vertical: getProportionateScreenHeight(20),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFB0B0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: 'Offers Ends Today\n',
              style: kPrimaryHeaderTextStyle,
              children: [
                TextSpan(
                  text: 'Exclusive App Delivery Promos',
                  style: kPrimaryBodyTextStyle,
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
          ),
        ],
      ),
    );
  }
}

class UploadPrescription extends StatelessWidget {
  const UploadPrescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultHorizontalPadding,
        vertical: getProportionateScreenHeight(20),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kPrimaryBorderColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 58,
            width: 58,
            child: Image.asset('assets/icons/prescription.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'Upload Prescription\n',
                  style: kPrimaryHeaderTextStyle,
                  children: [
                    TextSpan(
                      text: 'Order by uploading an image of your prescription',
                      style: kPrimaryBodyTextStyle,
                    ),
                  ],
                ),
              ),
              const VerticalSpacing(of: 15),
              SecondaryButton(
                width: 115,
                height: 30,
                text: 'Upload',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
