import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:call_me_maybe/styles.dart';

class BusinessCard extends StatelessWidget {

  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          avatar('assets/images/edgedancer.png', context),
          paddedText('Nick Lanners', context),
          paddedText('Software Engineer', context),
          GestureDetector(
            onTap: () => launch('sms:4356328289'),
            child: paddedText('435 632 8289', context)
          ),
          GestureDetector(
            onTap: () => launch('https://github.com/nlanners'),
            child: paddedText('github.com/nlanners', context)
          ),
          GestureDetector(
            onTap: () => launch('mailto:nicholas.lanners@gmail.com'),
            child: paddedText('nicholas.lanners@gmail.com', context)
          )
        ],
      )
    );
  }
}

Widget paddedText(String text, BuildContext context)  {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: padding(context)),
    child: Text(
      text,
      style: Styles.normalText
    )
  );
}

Widget avatar(String photo, BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(avatarPadding(context)),
    child: CircleAvatar(
      backgroundImage: Image.asset(photo).image,
      radius: avatarRadius(context)
    )
  );
}

double avatarRadius(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return MediaQuery.of(context).size.height * .1;
  } else {
    return MediaQuery.of(context).size.height * .075;
  }
}

double avatarPadding(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return MediaQuery.of(context).size.height * .03;
  } else {
    return MediaQuery.of(context).size.height * .035;
  }
}

double padding(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {    
    return MediaQuery.of(context).size.height * 0.01;
  } else {
    return MediaQuery.of(context).size.height * 0.01;
  }
}