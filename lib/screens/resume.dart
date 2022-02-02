import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Nicholas Lanners'),
        Text('nicholas.lanners@gmail.com'),
        Text('github.com/nlanners'),
      ]
    );
  }
}