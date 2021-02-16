import 'package:flutter/material.dart';
import 'package:marvel/model/superheroes.dart';
import 'package:marvel/widgets/textfields.dart';
import '../detail.dart';

class HeroCard extends StatelessWidget {
  final superHeroes object;

  const HeroCard({Key key, this.object}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => Detail(
                      object: object,
                    )));
      },
      child: Stack(
        children: [
          Center(
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.62,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [object.firstColor, object.secondColor],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.20,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Hero(
                tag: "${object.image}",
                child: Image.asset(
                  "${object.image}",
                  scale: MediaQuery.of(context).size.aspectRatio * 4.0,
                ),
              ),
            ),
          ),
          CardText(
            name: object.name,
            clickhere: object.clickhere,
          ),
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundFactor = 50.0;
    var path = Path();

    path.moveTo(0, size.width * 0.33); //move the initial point to 33%

    //Left bottom curve start
    path.lineTo(
        0.0, size.height - roundFactor); //did this to draw a quadratic curve
    path.quadraticBezierTo(0.0, size.height, roundFactor, size.height);
    //Left Bottom curve end

    //Right bottom curve start
    path.lineTo(size.width - roundFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundFactor);
    //Right bottom curve end

    //Top Right curve start
    path.lineTo(size.width, roundFactor * 2);
    path.quadraticBezierTo(
        size.width, 0, size.width - roundFactor * 3, roundFactor * 2);
    //top right curve close

    //top left curve start
    path.lineTo(roundFactor, size.height * 0.33 + 22);
    path.quadraticBezierTo(
        0, size.height * 0.45, 0, size.height * 0.33 + roundFactor * 2);
    //top let curve close

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
