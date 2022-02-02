import 'package:flutter/material.dart';
import 'package:call_me_maybe/styles.dart';
import 'screens/business_card.dart';
import 'screens/predictor.dart';
import 'screens/resume.dart';

class MainTabController extends StatelessWidget {
  const MainTabController({Key? key}): super(key: key);

  static const tabs = [
    Tab(icon: Icon(Icons.contacts)),
    Tab(icon: Icon(Icons.description)),
    Tab(icon: Icon(Icons.auto_fix_high))
  ];

  final screens = const [
    BusinessCard(),
    Resume(),
    Predictor()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Call Me Maybe',
              style: Styles.navBarTitle
            )
          ),
          bottom: const TabBar(tabs: tabs)
        ),
        body: TabBarView(children: screens,),
        backgroundColor: Theme.of(context).backgroundColor,
      )
    );
  }
}