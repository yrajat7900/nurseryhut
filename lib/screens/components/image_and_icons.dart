import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurseryhut/screens/details/components/icon_card.dart';

import '../../constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*3),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      icon: SvgPicture.asset("assets/icons/arrow.svg"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/wishlist.svg"),
                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/sun.svg"),
                ],
              ),
            ),
          ),
          Container(height: size.height * 0.85,
            width: size.width * 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(63),
                bottomLeft: Radius.circular(63),
              ),
              boxShadow: [BoxShadow(
                offset: Offset(0,10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29),
              ),
              ],
              image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/snakeplant.jpg"),
              ),
            ),
          ),
        ],),
      ),
    );
  }
}