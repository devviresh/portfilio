import 'package:flutter/material.dart';

import '../models/projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26)),
      child: InkWell(
        onTap: () {},
        onHover: (hover) {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              height: 220,
              child: Image.asset(
                project.imagePath,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    project.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(project.description),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Tech Stacks',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int j = 0; j < project.techStacks.length; j++)
                        Text(project.techStacks[j])
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
                          onPressed: () {}, child: const Text('Live Preview')),
                      const SizedBox(
                        width: 10,
                      ),

                      /// Github Link
                      IconButton.filledTonal(
                          onPressed: () {}, icon: const Icon(Icons.code)),
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
