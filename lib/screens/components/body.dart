import 'package:flutter/material.dart';
import 'package:nurseryhut/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plant.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will provide total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMorebtn(title: "Recommended", press: () {},),
            RecommendPlants(),
            TitleWithMorebtn(
              title: "Featured Plants",
              press: () {}),
            FeaturedPlants(),
            SizedBox(height: kDefaultPadding),
      ],
      ),
    );
    }
}








