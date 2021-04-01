import 'package:flutter/material.dart';

import 'package:nurseryhut/loginscreen/screen/sign_in/components/sign_form.dart';
import 'package:nurseryhut/loginscreen/theme.dart';




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
       home: SignForm(),
      // We use routeName so that we dont need to remember the name
      //initialRoute: SplashScreen.routeName,
      //routes: routes,
    );
  }
}