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
    imagePath: './assets/image/ccbcet.png',
    title: 'CodeChef BCET Chapter Website',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
    techStacks: ['React', 'Firebase', 'Tailwind CSS'],
    liveUrl: 'https://codechefbcetchapter.netlify.app/',
    githubUrl: 'https://github.com/CodeChef-BCET-Chapter/ccbcet-website',
  ),
  Project(
    imagePath: './assets/image/movie-cite.png',
    title: 'Movie-Cite',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
    techStacks: ['Flutter', 'Firebase', 'Rest API'],
    liveUrl: '',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/climate-x.png',
    title: 'Climate-x',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
    techStacks: ['HTML', 'CSS', 'JavaScript'],
    liveUrl: 'https://climate-x.netlify.app/',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/atlas-copco.png',
    title: 'Atlas Copco',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
    techStacks: ['Flutter', 'Firebase', 'NodeJs', 'AWS'],
    liveUrl: 'https://sprweb.atlascopco.com/',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/apc.png',
    title: 'APC Revision AID',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
    techStacks: ['Flutter', 'Firebase', 'NodeJS', 'AWS'],
    liveUrl: 'http://apcwebuat.demoserver25.com/',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/templify.png',
    title: 'Templify',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.',
    techStacks: ['Flutter', 'NodeJS', 'Rest API', 'MongoDB'],
    liveUrl: 'http://templify.demoserver23.com/',
    githubUrl: 'githubUrl',
  ),
];
