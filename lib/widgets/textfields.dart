import 'package:flutter/material.dart';
import 'package:marvel/model/superheroes.dart';

class CardText extends StatelessWidget {
  final String name;
  final String clickhere;

  const CardText({Key key, this.name, this.clickhere}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.11,
      left: MediaQuery.of(context).size.width * 0.12,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              "$name",
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
        Text(
          "$clickhere",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            letterSpacing: 2.0,
          ),
        ),
      ]),
    );
  }
}
