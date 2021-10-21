import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shop_task/constants/colors.dart';

class BuildAuthViewBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BuildIntroViewBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Transform.rotate(
          angle: pi / 10,
          child: Container(
            height: 70.0,
            width: double.infinity,
            color: mainColor.withOpacity(0.7),
            child: BuildAppTitleWidget(),
          ),
        ),
      ),
    );
  }
}

class BuildAppTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dress.png',
          height: 40.0,
          width: 34.0,
        ),
        const Text(
          'Loola Store',
          style: TextStyle(
            color: whiteColor,
            fontSize: 31.0,
            fontFamily: 'Inkfree',
          ),
        ),
      ],
    );
  }
}

class BuildDefaultButton extends StatelessWidget {
  final Color buttonColor;
  final Function onClick;
  final String buttonTitle;

  const BuildDefaultButton({
    @required this.buttonTitle,
    @required this.onClick,
    this.buttonColor = mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      splashColor: mainColor.withOpacity(0.2),
      highlightColor: mainColor.withOpacity(0.2),
      child: Container(
        height: 49.0,
        width: double.infinity,
        color: buttonColor,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 12.0,
              color: whiteColor,
              fontFamily: 'Cairo-Bold',
            ),
          ),
        ),
      ),
    );
  }
}

class BuildUnderlineButton extends StatelessWidget {
  final String buttonTitle;
  final Function onClick;
  final double fontSize;

  const BuildUnderlineButton(
      {@required this.buttonTitle, @required this.onClick, this.fontSize = 9});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      splashColor: mainColor.withOpacity(0.2),
      highlightColor: mainColor.withOpacity(0.2),
      child: Text(
        buttonTitle,
        style: Theme.of(context)
            .textTheme
            .headline2
            .copyWith(height: 1.2, fontSize: fontSize),
      ),
    );
  }
}

class BuildDefaultOutlineButton extends StatelessWidget {
  final Color buttonColor;
  final Function onClick;
  final String buttonTitle;

  const BuildDefaultOutlineButton({
    @required this.buttonTitle,
    @required this.onClick,
    this.buttonColor = mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      splashColor: mainColor.withOpacity(0.2),
      highlightColor: mainColor.withOpacity(0.2),
      child: Container(
        height: 49.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: buttonColor, width: 1.0),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}

class BuildDefaultIconButton extends StatelessWidget {
  final Key key;
  final Icon icon;
  final Color buttonColor;
  final Function onClick;
  final double iconSize;

  const BuildDefaultIconButton(
      {@required this.key,
      @required this.icon,
      @required this.buttonColor,
      @required this.onClick,
      this.iconSize = 20.0});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: key,
      icon: icon,
      color: buttonColor,
      iconSize: iconSize,
      onPressed: onClick,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      splashColor: mainColor.withOpacity(0.2),
      highlightColor: mainColor.withOpacity(0.2),
    );
  }
}

class BuildDefaultUnderlineBorderTextFormField extends StatelessWidget {
  final Key key;
  final String hint;
  final Function validate, onSave;
  final TextInputType keyboardType;
  final bool isPassword;

  const BuildDefaultUnderlineBorderTextFormField({
    @required this.key,
    @required this.hint,
    @required this.validate,
    @required this.onSave,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      validator: validate,
      onSaved: onSave,
      keyboardType: keyboardType,
      cursorColor: mainColor,
      style: Theme.of(context).textTheme.headline1.copyWith(color: whiteColor),
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.headline1,
        errorStyle:
            Theme.of(context).textTheme.headline1.copyWith(color: whiteColor),
        enabledBorder: _buildUnderlineInputBorder(),
        focusedBorder: _buildUnderlineInputBorder(),
        focusedErrorBorder: _buildUnderlineInputBorder(),
        errorBorder: _buildUnderlineInputBorder(),
      ),
    );
  }

  UnderlineInputBorder _buildUnderlineInputBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: mainColor, width: 1.0),
    );
  }
}

SizedBox verticalDistance() {
  return const SizedBox(
    height: 10.0,
  );
}

SizedBox miniVerticalDistance() {
  return const SizedBox(
    height: 5.0,
  );
}

SizedBox horizontalDistance() {
  return const SizedBox(
    width: 10.0,
  );
}

SizedBox miniHorizontalDistance() {
  return const SizedBox(
    width: 5.0,
  );
}

void namedNavigateTo(BuildContext context, String routeName) {
  Navigator.pushNamed(context, routeName);
}

void replacementNamedNavigateTo(BuildContext context, String routeName) {
  Navigator.pushReplacementNamed(context, routeName);
}
