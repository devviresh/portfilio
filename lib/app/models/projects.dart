class Project {
  final String imagePath;
  final String title;
  final String description;
  final List<String> techStacks;
  final String liveUrl;
  final String githubUrl;

  Project(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.techStacks,
      required this.liveUrl,
      required this.githubUrl});
}

final List<Project> projects = [
  Project(
    imagePath: './assets/image/movie-cite.png',
    title: 'Movie-Cite',
    description: 'description',
    techStacks: ['Flutter', 'Firebase', 'Rest API'],
    liveUrl: 'liveUrl',
    githubUrl: 'githubUrl',
  ),
  Project(
    imagePath: './assets/image/ccbcet.png',
    title: 'CodeChef BCET Chapter Website',
    description: 'description',
    techStacks: ['React', 'Firebase', 'Tailwind CSS'],
    liveUrl: 'liveUrl',
    githubUrl: 'githubUrl',
  ),
  Project(
    imagePath: './assets/image/climate-x.png',
    title: 'Climate-x',
    description: 'description',
    techStacks: ['HTML', 'CSS', 'JavaScript'],
    liveUrl: 'liveUrl',
    githubUrl: 'githubUrl',
  ),
  Project(
    imagePath: './assets/image/atlas-copco.png',
    title: 'Atlas Copco',
    description: 'description',
    techStacks: ['Flutter', 'Firebase', 'NodeJs', 'AWS'],
    liveUrl: 'liveUrl',
    githubUrl: 'githubUrl',
  ),
  Project(
    imagePath: './assets/image/apc.png',
    title: 'APC Revision AID',
    description: 'description',
    techStacks: ['Flutter', 'Firebase', 'NodeJS', 'AWS'],
    liveUrl: 'liveUrl',
    githubUrl: 'githubUrl',
  ),
  Project(
    imagePath: './assets/image/templify.png',
    title: 'Templify',
    description: 'description',
    techStacks: ['Flutter', 'NodeJS', 'Rest API', 'MongoDB'],
    liveUrl: 'liveUrl',
    githubUrl: 'githubUrl',
  ),
];
