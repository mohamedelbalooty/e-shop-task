import 'package:flutter/material.dart';
import 'package:shop_task/constants/colors.dart';
import 'package:shop_task/view/layout_view/layout_view.dart';
import '../app_components.dart';
import 'forget_password_view_components.dart';

class ForgetPasswordView extends StatefulWidget {
  static const String id = 'ForgetPasswordView';

  @override
  _ForgetPasswordViewState createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _thirdController.dispose();
    _forthController.dispose();
    _fifthController.dispose();
    super.dispose();
  }

  final TextEditingController _firstController = TextEditingController();

  final TextEditingController _secondController = TextEditingController();

  final TextEditingController _thirdController = TextEditingController();

  final TextEditingController _forthController = TextEditingController();

  final TextEditingController _fifthController = TextEditingController();

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100.0,
                    ),
                    BuildAppTitleWidget(),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BuildDefaultIconButton(
                          key: UniqueKey(),
                          icon: Icon(Icons.arrow_back_ios_outlined),
                          buttonColor: whiteColor,
                          onClick: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: BuildConfirmationCodeTextFormField(
                            key: UniqueKey(),
                            controller: _firstController,
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: BuildConfirmationCodeTextFormField(
                            key: UniqueKey(),
                            controller: _secondController,
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: BuildConfirmationCodeTextFormField(
                            key: UniqueKey(),
                            controller: _thirdController,
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: BuildConfirmationCodeTextFormField(
                            key: UniqueKey(),
                            controller: _forthController,
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: BuildConfirmationCodeTextFormField(
                            key: UniqueKey(),
                            controller: _fifthController,
                          ),
                        ),
                      ],
                    ),
                    miniVerticalDistance(),
                    InkWell(
                      onTap: () {
                        replacementNamedNavigateTo(context, LayoutView.id);
                      },
                      splashColor: mainColor.withOpacity(0.2),
                      highlightColor: mainColor.withOpacity(0.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'لم تستلم الكود؟',
                            style:
                                Theme.of(context).textTheme.headline2.copyWith(
                                      decoration: TextDecoration.none,
                                    ),
                          ),
                          Text(
                            ' إعادة ارسال',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    BuildDefaultButton(
                      buttonTitle: 'انتهيت',
                      onClick: () {
                        replacementNamedNavigateTo(context, LayoutView.id);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
