import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class superHeroes {
  final String name;
  final String clickhere = "Click to Read more";
  final String image;
  final Color firstColor, secondColor;
  final String details;
  //List<superHeroes>heroList;
  superHeroes({
    this.name,
    this.image,
    this.firstColor,
    this.secondColor,
    this.details,
  });
}

List<superHeroes> heroList = [
  superHeroes(
    name: 'Iron man',
    image: 'assets/ironman.png',
    firstColor: Colors.red,
    secondColor: Colors.orange,
    details:
        "When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.",
  ),
  superHeroes(
    name: 'Captain America',
    image: 'assets/captain.png',
    firstColor: Colors.blueGrey,
    secondColor: Colors.blue,
    details:
        "During World War II, Steve Rogers decides to volunteer in an experiment that transforms his weak body. He must now battle a secret Nazi organisation headed by Johann Schmidt to defend his nation.",
  ),
  superHeroes(
    name: 'Black Widow',
    image: 'assets/widow.png',
    firstColor: Colors.blueGrey,
    secondColor: Colors.grey,
    details:
        "At birth the Black Widow (aka Natasha Romanova) is given to the KGB, which grooms her to become its ultimate operative. When the U.S.S.R. breaks up, the government tries to kill her as the action moves to present-day New York, where she is a freelance operative.",
  ),
  superHeroes(
    name: 'Scarlet Witch',
    image: 'assets/witch.png',
    firstColor: Colors.pink,
    secondColor: Colors.red,
    details:
        "The Scarlet Witch is a fictional superhero appearing in American comic books published by Marvel Comics. The character was created by writer Stan Lee and artist Jack Kirby.",
  ),
  superHeroes(
    name: 'Thor',
    image: 'assets/thor.png',
    firstColor: Colors.black54,
    secondColor: Colors.redAccent,
    details:
        "Thor is exiled by his father, Odin, the King of Asgard, to the Earth to live among mortals. When he lands on Earth, his trusted weapon Mjolnir is discovered and captured by S.H.I.E.L.D.",
  ),
];
