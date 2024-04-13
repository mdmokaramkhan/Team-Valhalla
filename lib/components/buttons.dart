import 'package:flutter/material.dart';
import 'package:jobtal/style.dart';

class ButtonOutline extends StatelessWidget {
  final String lable;
  final Color colorBackground;
  final Color colorText;
  final double elevation;
  final Function()? onPressed;
  const ButtonOutline({
    super.key,
    required this.lable,
    required this.colorBackground,
    required this.colorText,
    required this.elevation,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      type: MaterialType.card,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        splashColor: S.colors.white.withOpacity(0.4),
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: colorBackground),
            borderRadius: BorderRadius.circular(30)
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 44,
          child: Center(
            child: Text(
              lable,
              style: S.textStyles.cardTittle.copyWith(
                color: colorBackground,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonLarge extends StatelessWidget {
  final String lable;
  final Color color;
  final Function()? onPressed;
  const ButtonLarge({
    super.key,
    required this.lable,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 2,
      shadowColor: color,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: S.colors.white.withOpacity(0.4),
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 54,
          width: double.maxFinite,
          child: Center(
            child: Text(
              lable,
              style: S.textStyles.cardTittle.copyWith(color: S.colors.fixwhite),
            ),
          ),
        ),
      ),
    );
  }
}