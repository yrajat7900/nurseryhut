import 'dart:js';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'colors.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kDarkTheme,
      home: ProfileScreen(),
    );
  }
}
class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
  }


  var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: kSpacingUnit.w * 1.5,
                      widthFactor: kSpacingUnit.w * 1.5,
                      child: Icon(
                        LineAwesomeIcons.pen,
                        color: kDarkPrimaryColor,
                        size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text(
            'Rajat',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text(
            'yrajat7900@gmail.com',
            style: kCaptionTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Container(
            height: kSpacingUnit.w * 4,
            width: kSpacingUnit.w * 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
              color: Theme.of(context).accentColor,
            ),
            child: Center(
              child: Text(
                'Upgrade to PRO',
                style: kButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: kSpacingUnit.w * 3),
        Icon(
          LineAwesomeIcons.arrow_left,
          size: ScreenUtil().setSp(kSpacingUnit.w * 3),
        ),
        profileInfo,
        Icon(
            LineAwesomeIcons.sun,
        size: ScreenUtil().setSp(kSpacingUnit.w*3),
        ),
        SizedBox(width: kSpacingUnit.w * 3),
      ],
    );

  return Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(height: kSpacingUnit.w * 5),
                header,
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      ProfileListItem(
                        icon: LineAwesomeIcons.user_shield,
                        text: 'Privacy',
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.history,
                        text: 'Purchase History',
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.question_circle,
                        text: 'Help & Support',
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.cog,
                        text: 'Settings',
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.user_plus,
                        text: 'Invite a Friend',
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.alternate_sign_out,
                        text: 'Logout',
                        hasNavigation: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
    }

  class ProfileListItem extends StatelessWidget {
    final IconData icon;
    final text;
    final bool hasNAvigation;

    const ProfileListItem({
      Key key,
      this.icon,
      this.text,
      this.hasNAvigation= true,
    }) : super(key: key);
  }
  @override
  Widget build(BuildContext context){
  return Container(
    height: kSpacingUnit*5.5,
    margin: EdgeInsets.symmetric(
      horizontal: kSpacingUnit.w*4,
    ).copyWith(
      bottom: kSpacingUnit.w*2,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: kSpacingUnit.w*2,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(kSpacingUnit.w*3),
      color: Theme.of(context).backgroundColor,
    ),
    child: Row(
      children: <Widget>[
        Icon(
            this.icon,
            size: kSpacingUnit.w*2.5,
        ),
        SizedBox(width: kSpacingUnit.w*2.5),
        Text(
            this.text,
        style: kTitleTextStyle.copyWith(
          fontWeight: FontWeight.w500,
        ),
        ),
        Spacer(),
        if(this.hasNavigation)
          Icon(
            LineAwesomeIcons.angle_right,
            size: kSpacingUnit.w*2.5,
          ),
      ],
    ),
  );

  }
