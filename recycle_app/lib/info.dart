import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("General Information", style: TextStyle(fontSize: 25)),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
            margin:
                new EdgeInsets.only(top: 30, left: 18, right: 18, bottom: 50),
            child: CustomScrollView(slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  child: RichText(
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: TextStyle(
                          color: Theme.of(context).textSelectionColor,
                          fontSize: 22),
                      children: <TextSpan>[
                        new TextSpan(text: 'As long as they’re '),
                        new TextSpan(
                            text: 'clean and dry, ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(
                            text: 'plastic bottles and containers,'
                                ' paper, flattened cardboard, food and beverage cans and '
                                'containers, and glass bottles and containers can be recycled.'
                                '\n\nThere are '),
                        new TextSpan(
                            text: 'three main categories ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(
                            text:
                                'for discarding waste. If something is non-recyclable, '
                                'it belongs to the '),
                        new TextSpan(
                            text: 'general waste ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(
                            text:
                                'bins. Some goods can be recycled through the '),
                        new TextSpan(
                            text: 'general blue recycling bins, ',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(text: 'and some need to be brought to '),
                        new TextSpan(
                            text: 'special facilities',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(
                            text:
                                ' to be repurposed. In general, if an item is plastic,'
                                ' but is not a bottle or containers, it probably cannot be '
                                'recycled through the curbside recycling bins, and will likely '
                                'need to be taken to a specific location.\n\nWhen recycling, it '
                                'is imperative that you make sure the material is clean. Used '
                                'food containers can only be recycled if the food waste is washed'
                                ' out of it-- '),
                        new TextSpan(
                            text: 'no liquids',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(text: ' can be present either. You '),
                        new TextSpan(
                            text: 'cannot recycle plastic bags',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(
                            text: ' this means that you also cannot place all '
                                'your recyclable items into a plastic bag and then into the '
                                'recycling bin.\n\nWhen recycling anything, it’s important to '),
                        new TextSpan(
                            text: 'double check',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(text: ' to make sure that '),
                        new TextSpan(
                            text:
                                'your specific community accepts the material',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(
                          text: ' you are trying to recycle.',
                        ),
                      ],
                    ),
                  ),
                ),
                //   child: ElevatedButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     child: Text('Back to Home Page'),
                //   ),
                // ),
              ]))
            ])));
  }
}
