import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          "Info Page",
        ), // style: TextStyle(color: Color.fromRGBO(0, 0, 46, 1))
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical, //.horizontal
                padding: EdgeInsets.all(20),
                child: Text(
                  'As long as they’re clean and dry, plastic bottles and containers, paper, flattened cardboard, food and beverage cans and containers, and glass bottles and containers can be recycled.\n\nThere are three main categories for discarding waste. If something is non-recyclable, it belongs to the general waste bins. Some goods can be recycled through the general blue recycling bins, and some need to be brought to special facilities to be repurposed. In general, if an item is plastic, but is not a bottle or containers, it probably cannot be recycled through the curbside recycling bins, and will likely need to be taken to a specific location.\n\nWhen recycling, it is imperative that you make sure the material is clean. Used food containers can only be recycled if the food waste is washed out of it-- no liquids can be present either. You cannot recycle plastic bags: this means that you also cannot place all your recyclable items into a plastic bag and then into the recycling bin.\n\nWhen recycling anything, it’s important to double check to make sure that your specific community accepts the material you are trying to recycle. ',
                  style: new TextStyle(
                    color: Color.fromRGBO(0, 0, 46, 1),
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
