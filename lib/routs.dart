import 'package:flutter/material.dart';
import 'view/forget_password_view/forget_password_view.dart';
import 'view/intro_view/intro_view.dart';
import 'view/layout_view/layout_view.dart';
import 'view/login_view/login_view.dart';
import 'view/register_view/register_view.dart';

Map<String, WidgetBuilder> routes = {
  LoginView.id: (_) => LoginView(),
  RegisterView.id: (_) => RegisterView(),
  IntroView.id: (_) => IntroView(),
  LayoutView.id: (_) => LayoutView(),
  ForgetPasswordView.id: (_) => ForgetPasswordView(),
};
