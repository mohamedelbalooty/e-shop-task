import 'package:flutter/material.dart';
import 'package:shop_task/view/layout_view/layout_view.dart';
import 'package:shop_task/view/login_view/login_view.dart';

import '../app_components.dart';

class RegisterView extends StatelessWidget {
  static const String id = 'RegisterView';

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String _email,
      _password,
      _firstName,
      _secondName,
      _passwordConfirmation,
      _phone,
      _address;
  final TextEditingController _passwordController = TextEditingController();

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
                        height: 64.0,
                      ),
                      BuildAppTitleWidget(),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BuildDefaultUnderlineBorderTextFormField(
                              key: UniqueKey(),
                              hint: ' الاسم الاول',
                              onSave: (String value) {
                                _email = value;
                              },
                              validate: (String value) {
                                if (value.isEmpty) {
                                  return 'أدخل الاسم الاول';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          horizontalDistance(),
                          Expanded(
                            child: BuildDefaultUnderlineBorderTextFormField(
                              key: UniqueKey(),
                              hint: ' الاسم الثاني',
                              onSave: (String value) {
                                _email = value;
                              },
                              validate: (String value) {
                                if (value.isEmpty) {
                                  return 'أدخل الاسم الثاني';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      verticalDistance(),
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
                      BuildDefaultUnderlineBorderTextFormField(
                        key: UniqueKey(),
                        hint: ' تأكيد كلمة المرور',
                        isPassword: true,
                        keyboardType: TextInputType.visiblePassword,
                        onSave: (String value) {
                          _passwordConfirmation = value;
                        },
                        validate: (String value) {
                          if (value.isEmpty) {
                            return 'برجاء تأكيد كلمة المرور';
                          } else if (value != _passwordController.text) {
                            return 'برجاء التأكد من كلمة المرور';
                          } else {
                            return null;
                          }
                        },
                      ),
                      verticalDistance(),
                      BuildDefaultUnderlineBorderTextFormField(
                        key: UniqueKey(),
                        hint: ' رقم الهاتف',
                        keyboardType: TextInputType.visiblePassword,
                        onSave: (String value) {
                          _phone = value;
                        },
                        validate: (String value) {
                          if (value.isEmpty) {
                            return 'أدخل رقم الهاتف';
                          } else {
                            return null;
                          }
                        },
                      ),
                      verticalDistance(),
                      BuildDefaultUnderlineBorderTextFormField(
                        key: UniqueKey(),
                        hint: ' العنوان',
                        keyboardType: TextInputType.visiblePassword,
                        onSave: (String value) {
                          _address = value;
                        },
                        validate: (String value) {
                          if (value.isEmpty) {
                            return 'أدخل العنوان';
                          } else {
                            return null;
                          }
                        },
                      ),
                      verticalDistance(),
                      verticalDistance(),
                      BuildDefaultButton(
                        buttonTitle: 'انشاء حساب',
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
                        buttonTitle: 'تسجيل الدخول',
                        fontSize: 11.0,
                        onClick: () {
                          namedNavigateTo(context, LoginView.id);
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
