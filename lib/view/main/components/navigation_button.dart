import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';

import '../../../view model/responsive.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                  fontSize: Responsive.isLargeMobile(context) ? 10 : null),
        ));
  }
}
