import 'package:flutter/material.dart';
import 'package:marvel/model/superheroes.dart';
import 'package:marvel/widgets/herocard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25.0,
            ),
            onPressed: () => print("BACK press")),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 28.0,
              ),
              onPressed: () => print("SEARCH pressed")),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              "Marvel Cinematic",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0, left: 20.0),
            child: Text(
              "Characters",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 28.0,
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                itemCount: heroList.length,
                itemBuilder: (BuildContext context, int index) {
                  return HeroCard(object: heroList[index]);
                }),
          )
        ],
      ),
    );
  }
}
