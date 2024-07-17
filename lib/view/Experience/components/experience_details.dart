import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../model/experience_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/certification_controller.dart';

class ExperienceStack extends StatelessWidget {
  final controller = Get.put(CertificationController());
  ExperienceStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPaddingForExperience),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experienceList[index].name,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(
                      color:secondaryColor,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: defaultPaddingForExperience,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(experienceList[index].organization,style: const TextStyle(color: Colors.amber),),
                    Text(experienceList[index].date,style: const TextStyle(color: Colors.grey,fontSize: 12),),
                  ],
                ),
                const SizedBox(height: defaultPaddingForExperience/2,),
                Text.rich(
                  maxLines: 1,
                  TextSpan(
                      text: 'Skills : ',style: const TextStyle(color: secondaryColor,),
                      children: [
                        TextSpan(
                          text: experienceList[index].skills,style: const TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),)
                      ]
                  ),),
                const SizedBox(height: defaultPaddingForExperience,),
                    Text(experienceList[index].description,style: const TextStyle(color: Colors.grey,height: 1.5),maxLines: size.width>700 && size.width< 750 ? 3:  size.width<470  ? 2  : size.width>600 && size.width<700 ?     6:  size.width>900 && size.width <1060 ? 6: 3 ,overflow: TextOverflow.ellipsis,),
                const SizedBox(height: defaultPaddingForExperience,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                       TextButton(
                      onPressed: () {
            // Call the function to show full text
            _showFullText(context, experienceList[index].description);
                      },
                      child: const Text(
            'Read More>>',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
                      ),)
                    ],)
                    // const Spacer(),
                // InkWell(
                //   onTap: () {
                //     launchUrl(Uri.parse(experienceList[index].credential));
                //   },
                //   child: Container(
                //     height: 40,
                //     width: 150,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(30),
                //         gradient: LinearGradient(
                //             colors: [
                //               Colors.pink,
                //               Colors.blue.shade900,
                //             ]
                //         ),
                //         boxShadow:const [
                //           BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 5),
                //           BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 5),
                //         ]
                //     ),
                //     child: const Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text('Credentials',style: TextStyle(color: secondaryColor,fontSize: 10),),
                //         SizedBox(width: 5,),
                //         Icon(
                //           CupertinoIcons.arrow_turn_up_right,color: secondaryColor,size: 10,
                //         )
                //       ],
                //     ),
                //   ),
                // ),
            
              ],
            ),
          )),
    );
  }

    void _showFullText(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: const Text('Close',style: TextStyle(color: Colors.purple),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
