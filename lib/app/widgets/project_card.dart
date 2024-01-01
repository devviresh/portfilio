import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/projects.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26),
        boxShadow: isHovered
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ]
            : [],
      ),
      child: InkWell(
        onTap: () {},
        onHover: (hover) {
          setState(() {
            isHovered = hover;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              height: 220,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  widget.project.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.project.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.project.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Tech Stacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[400]),
                    textAlign: TextAlign.center,
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int j = 0; j < widget.project.techStacks.length; j++)
                        Text(widget.project.techStacks[j]),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Preview
                      FilledButton(
                        onPressed: widget.project.liveUrl.isEmpty
                            ? () {}
                            : () async {
                                await launchUrl(
                                  Uri.parse(widget.project.liveUrl),
                                );
                              },
                        child: const Text('Live Preview'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),

                      /// Github Link
                      IconButton.filledTonal(
                        onPressed: () {},
                        icon: const Icon(Icons.code),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
