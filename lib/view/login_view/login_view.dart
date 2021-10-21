import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_task/view/forget_password_view/forget_password_view.dart';
import 'package:shop_task/view/layout_view/layout_view.dart';
import 'package:shop_task/view/register_view/register_view.dart';
import '../app_components.dart';

class LoginView extends StatelessWidget {
  static const String id = 'LoginView';

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BuildAuthViewBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  key: _globalKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 114.0,
                      ),
                      BuildAppTitleWidget(),
                      const SizedBox(
                        height: 50.0,
                      ),
                      BuildDefaultUnderlineBorderTextFormField(
                        key: UniqueKey(),
                        hint: ' البريد الالكتروني',
                        onSave: (String value) {
                          _email = value;
                        },
                        validate: (String value) {
                          if (value.isEmpty) {
                            return 'أدخل البريد الالكتروني';
                          } else {
                            return null;
                          }
                        },
                      ),
                      verticalDistance(),
                      BuildDefaultUnderlineBorderTextFormField(
                        key: UniqueKey(),
                        hint: ' كلمة المرور',
                        isPassword: true,
                        keyboardType: TextInputType.visiblePassword,
                        onSave: (String value) {
                          _password = value;
                        },
                        validate: (String value) {
                          if (value.isEmpty) {
                            return 'أدخل كلمة المرور';
                          } else {
                            return null;
                          }
                        },
                      ),
                      verticalDistance(),
                      verticalDistance(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BuildUnderlineButton(
                            buttonTitle: 'نسيت كلمة المرور؟',
                            onClick: () {
                              namedNavigateTo(context, ForgetPasswordView.id);
                            },
                          ),
                        ],
                      ),
                      verticalDistance(),
                      verticalDistance(),
                      verticalDistance(),
                      BuildDefaultButton(
                        buttonTitle: 'تسجيل الدخول',
                        onClick: () {
                          if (_globalKey.currentState.validate()) {
                            _globalKey.currentState.save();
                            replacementNamedNavigateTo(context, LayoutView.id);
                          }
                        },
                      ),
                      verticalDistance(),
                      Text(
                        'او',
                        style: Theme.of(context).textTheme.headline2.copyWith(
                              decoration: TextDecoration.none,
                            ),
                      ),
                      verticalDistance(),
                      BuildUnderlineButton(
                        buttonTitle: 'انشاء حساب',
                        fontSize: 11.0,
                        onClick: () {
                          namedNavigateTo(context, RegisterView.id);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
