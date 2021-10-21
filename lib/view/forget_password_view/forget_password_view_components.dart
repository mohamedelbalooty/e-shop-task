import 'package:flutter/material.dart';
import 'package:shop_task/constants/colors.dart';

class BuildConfirmationCodeTextFormField extends StatelessWidget {
  final Key key;
  final TextEditingController controller;

  BuildConfirmationCodeTextFormField({
    @required this.key,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      width: 52.0,
      color: Colors.transparent,
      child: TextFormField(
        key: key,
        controller: controller,
        cursorColor: whiteColor,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: Theme.of(context)
            .textTheme
            .headline1
            .copyWith(color: mainColor, fontSize: 18.0),
        decoration: InputDecoration(
          focusColor: mainColor,
          contentPadding: EdgeInsets.zero,
          enabledBorder: _buildOutlineInputBorder(),
          focusedBorder: _buildOutlineInputBorder(),
          focusedErrorBorder: _buildOutlineInputBorder(),
          errorBorder: _buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.zero),
      borderSide: BorderSide(
        color: mainColor,
        width: 1.0,
      ),
    );
  }
}
