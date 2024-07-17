import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '03244533919'),
        AreaInfoText(title: 'Email', text: 'laibaazam.31@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: 'laiba-azam-5ab503220'),
        AreaInfoText(title: 'Github', text: 'Laiba3131'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills:',style: TextStyle(color: secondaryColor),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
