import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_task/view/login_view/login_view.dart';
import 'package:shop_task/view/register_view/register_view.dart';
import '../app_components.dart';

class IntroView extends StatelessWidget {
  static const String id = 'IntroView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          BuildIntroViewBackground(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BuildDefaultButton(
                    buttonTitle: 'تسجيل الدخول',
                    onClick: () {
                      namedNavigateTo(context, LoginView.id);
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  BuildDefaultOutlineButton(
                    buttonTitle: 'انشاء حساب',
                    onClick: () {
                      namedNavigateTo(context, RegisterView.id);
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
