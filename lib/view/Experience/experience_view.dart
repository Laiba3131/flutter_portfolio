import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/Experience/components/experience_grid.dart';
import 'package:get/get.dart';
class ExperienceView extends StatelessWidget {
  ExperienceView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ShaderMask(
                    shaderCallback: (bounds) {
                      return const LinearGradient(
                          end: Alignment.centerRight,
                          begin: Alignment.centerLeft,
                          colors: [
                            newColor,
                            Colors.cyanAccent,
                          ]).createShader(bounds);
                    },
                    child: Text(
                      'Experience',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: secondaryColor,
                          fontSize: !Responsive.isDesktop(context)
                              ? Responsive.isLargeMobile(context)
                                  ? 20
                                  : 30
                              : 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
           ],
         ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: ExperienceGrid(crossAxisCount: 3,),
                  extraLargeScreen: ExperienceGrid(crossAxisCount: 4,),
                  largeMobile: ExperienceGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: ExperienceGrid(crossAxisCount: 1,ratio: 1.5),
                  tablet: ExperienceGrid(ratio: 1.4,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}







