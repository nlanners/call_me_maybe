import 'package:flutter/material.dart';
import 'package:call_me_maybe/styles.dart';
import '../models/magic_8.dart';


class Predictor extends StatefulWidget {
  const Predictor({ Key? key }) : super(key: key);

  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {

  final magic8 = Magic8();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: padding(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            flexText('Call Me...Maybe', 2, Styles.headerLarge),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: GestureDetector(
                onTap: () { setState(() { magic8.roll(); });},
                child: const Text(
                  'Ask a question...tap for the answer.',
                  style: Styles.clickText
                )
              ),
            ),
            flexText(magic8.currentResponse, 4, Styles.responseText)
          ]
        ),
      ),
    );
  }
}

Widget flexText(String text, int flex, style) {
  return Flexible(
    flex: flex,
    fit: FlexFit.tight,
    child: Text(text, style: style)
  );
}

double padding(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.landscape) {    
    return MediaQuery.of(context).size.height * 0.15;
  } else {
    return MediaQuery.of(context).size.height * 0.2;
  }
}