import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/main/components/drawer/contact_icons.dart';
import 'package:flutter_portfolio/view/main/components/drawer/personal_info.dart';
import '../../../../res/constants.dart';
import 'knowledges.dart';
import 'about.dart';
import 'my_skill.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child: const Padding(
              padding: EdgeInsets.all(defaultPadding/2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Education:',style: TextStyle(color: Colors.white),),
                  // SizedBox(
                  //   height: defaultPadding,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('BS(Information Technology)',style: TextStyle(color: Colors.white),),
                      Text('2019-2023)',style: TextStyle(color: Colors.amber),),
                    ],
                  ),
                  Text('Punjab university of Information Technology',),
                  Divider(),
                  PersonalInfo(),
                  MySKills(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding,),
                  ContactIcon(),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




