class OpenSource {
  final String imagePath;
  final String title;
  final String description;
  final List<String> techStacks;
  final String liveUrl;
  final String githubUrl;

  OpenSource(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.techStacks,
      required this.liveUrl,
      required this.githubUrl});
}

final List<OpenSource> opensources = [
  OpenSource(
    imagePath: './assets/image/desicart.png',
    title: 'DesiCart',
    description: 'A Multi-vendor Food, Grocery, Pharmacy & Parcel service.',
    techStacks: ['Flutter', 'Firebase', 'Rest API'],
    liveUrl: '',
    githubUrl: '',
  ),
  OpenSource(
    imagePath: './assets/image/tictic.jpg',
    title: 'TicTic',
    description: 'A Social Medial Platform with E-commerce.',
    techStacks: ['Flutter', 'Firebase', 'Rest API'],
    liveUrl: '',
    githubUrl: '',
  ),
  OpenSource(
    imagePath: './assets/image/hacktoberfest.png',
    title: 'Hacktoberfest 2023',
    description: 'Contributed in some Projects',
    techStacks: [],
    liveUrl: '',
    githubUrl: '',
  ),
  // OpenSource(
  //   imagePath: './assets/image/tictic.jpg',
  //   title: 'TicTic',
  //   description: 'A Social Medial Platform with E-commerce',
  //   techStacks: ['Flutter', 'Firebase', 'Rest API'],
  //   liveUrl: '',
  //   githubUrl: '',
  // ),
];
