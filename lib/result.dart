import 'package:flutter/material.dart';
import 'constants.dart';
import 'card.dart';
import 'bottomcontainer.dart';

class Results extends StatelessWidget {
  Results({@required this.bmiresult, @required this.resulttext, @required this.interpretation});

  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: krestitletext,
                ),
              ),
            ),
            Expanded(
              flex:5,
              child: ReusableCard(
                colour: kActivecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resulttext,
                      style: kresulttext,
                    ),
                    Text(
                      bmiresult,
                      style: kbmistyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kinterpretation,
                    ),
                  ],
                ),
              ),
            ),
            BottomContainer(
              text: 'ReCalculate',
              ontap: (){ Navigator.pop(context);},
            )
          ],
        ));
  }
}
