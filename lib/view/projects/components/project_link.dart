import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});

  void _showFullText(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            launch(Uri.parse(projectList[index].link).toString());
          },
          child:projectList[index].link!=""? Row(
            children: [
              const Text('Check on Github', style: TextStyle(color: Colors.amber), overflow: TextOverflow.ellipsis),
              IconButton(
                onPressed: () {
                  // launchUrl(Uri.parse(projectList[index].link));
                },
                icon: SvgPicture.asset('assets/icons/github.svg'),
              ),
            ],
          ):InkWell(
            onTap: (){},
            child: Text('Check on Google play', style: TextStyle(color: Colors.amber), overflow: TextOverflow.ellipsis)),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            // Call the function to show full text
            _showFullText(context, projectList[index].description);
          },
          child: const Text(
            'Read More>>',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}