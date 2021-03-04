import 'package:flutter/material.dart';
import 'package:nurseryhut/screens/details/components/details_screen.dart';

import '../../constants.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/snakeplant.jpg",
            title: "Snake Plant",
            price:  249,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
              ),
              );
            },
          ),
          RecommendPlantCard(
            image: "assets/images/snakeplant.jpg",
            title: "Snake Plant",
            price:  249,
            press: () { Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );},
          ),
          RecommendPlantCard(
            image: "assets/images/snakeplant.jpg",
            title: "Snake Plant",
            price:  249,
            press: () { Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );},
          ),
          RecommendPlantCard(
            image: "assets/images/snakeplant.jpg",
            title: "Snake Plant",
            price:  249,
            press: () { Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );},
          ),
          RecommendPlantCard(
            image: "assets/images/snakeplant.jpg",
            title: "Snake Plant",
            price:  249,
            press: () { Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key key,
    this.image,
    this.title,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [BoxShadow(offset: Offset(0 , 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(text: "")
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("Rs$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}