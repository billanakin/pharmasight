import 'package:flutter/material.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.post});

  final Post post;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? commentMessage;

  FocusNode? _commentMessageNode;

  @override
  void initState() {
    super.initState();
    _commentMessageNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _commentMessageNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Profile userProfile = DemoProfilesData.userProfile;

    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: kDefaultHorizontalPadding,
              right: kDefaultHorizontalPadding,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpacing(of: 20),
                // buildProfileHeader(userProfile),
                const VerticalSpacing(of: 20),
                buildCommentMessageField(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildProfileHeader(Profile userProfile) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProfileAvatar.secondary(
          profile: userProfile,
        ),
        const HorizontalSpacing(of: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userProfile.name,
                style: kPrimaryBodyTextStyle,
              ),
              Text(
                "Replying to ${widget.post.profile.name}",
                style: kSecondaryBodyTextStyle.copyWith(
                  color: kPrimaryBodyTextColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  TextField buildCommentMessageField() {
    return TextField(
      focusNode: _commentMessageNode,
      textInputAction: TextInputAction.done,
      onEditingComplete: () => _commentMessageNode!.unfocus(),
      onChanged: (value) => commentMessage = value, // POST MESSAGE HERE
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      maxLines: null,
      maxLength: 750,
      decoration: InputDecoration(
        fillColor: Colors.white,
        contentPadding: EdgeInsets.zero,
        isDense: true,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        hintText: "Share your response...",
        hintStyle: kPrimaryBodyTextStyle,
      ),
    );
  }
}
