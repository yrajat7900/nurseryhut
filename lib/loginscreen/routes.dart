import 'package:flutter/widgets.dart';
import 'package:nurseryhut/loginscreen/screen/forgot_password/forgot_password_screen.dart';
import 'package:nurseryhut/loginscreen/screen/sign_in/sign_in_screen.dart';






// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {

  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),

};