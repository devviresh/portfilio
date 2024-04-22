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
        'Official Website of CodeChef BCET Chapter.\nUsers can check CodeChef Proile, Ranklist, Events, Contests and Get Resources',
    techStacks: ['React', 'Firebase', 'Tailwind CSS'],
    liveUrl: 'https://codechefbcetchapter.netlify.app/',
    githubUrl: 'https://github.com/CodeChef-BCET-Chapter/ccbcet-website',
  ),
  Project(
    imagePath: './assets/image/movie-cite.jpg',
    title: 'Movie-Cite',
    description:
        'A beautiful designed Flutter app build with Tmdb Api which will give you the updates about upcoming Movies and Tv-series.\nUser can search for their favourite movies, tv series and get more info about their casts, synopsis, gallery etc.',
    techStacks: ['Flutter', 'Firebase', 'Rest API'],
    liveUrl: '',
    githubUrl: 'https://github.com/devviresh/movie-cite',
  ),
  Project(
    imagePath: './assets/image/climate-x.jpg',
    title: 'Climate-x',
    description:
        'Get real time weather reports based on Geo-location or search.\nDisplays 5 day forecast + 2 day Hourly forecast',
    techStacks: ['HTML', 'CSS', 'JavaScript'],
    liveUrl: 'https://climate-x.netlify.app/',
    githubUrl: 'https://github.com/devviresh/climate-x',
  ),
  Project(
    imagePath: './assets/image/flappy.png',
    title: 'Flappy Bird',
    description:
        'A Flappy Bird game built in Flutter using the Flame engine deployed on vercel.',
    techStacks: ['Flutter', 'Flame', 'Vercel'],
    liveUrl: 'https://flappy-bird-vd.vercel.app/',
    githubUrl: 'https://github.com/devviresh/flappy_bird',
  ),
  Project(
    imagePath: './assets/image/rent-house.png',
    title: 'Rent House',
    description:
        'Simplify the process for landlords and tenants, ensuring seamless property discovery and management.',
    techStacks: ['React Js', 'Tailwind CSS', 'NextAuth', 'PostgreSql'],
    liveUrl: 'https://view-property.netlify.app/',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/atlas-copco.png',
    title: 'Atlas Copco',
    description:
        'Offers multilingual support in 9 languages.\nGet info about various tools, training, flowchart-based solutions, and support.',
    techStacks: ['Flutter', 'Firebase', 'NodeJs', 'AWS'],
    liveUrl: 'https://sprweb.atlascopco.com/',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/chess.png',
    title: 'ChaturAnga',
    description:
        'A Classic Chess game built with flutter.',
    techStacks: ['Flutter', 'Vercel'],
    liveUrl: 'https://chatur-anga.vercel.app/',
    githubUrl: 'https://github.com/devviresh/Chaturanga',
  ),
  Project(
    imagePath: './assets/image/apc.png',
    title: 'APC Revision AID',
    description:
        'Users can set up profiles, access resources, practice Q&A tests, and receive results history & charts based on performance.',
    techStacks: ['Flutter', 'Firebase', 'NodeJS', 'AWS'],
    liveUrl: 'http://apcwebuat.demoserver25.com/',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/templify.jpg',
    title: 'Templify',
    description:
        'A Flutter web app to manage users and display details in an advanced data table with CRUD operations. Users can create multiple profiles that can be exported as Resumes in PDF format.',
    techStacks: ['Flutter', 'NodeJS', 'Rest API', 'MongoDB'],
    liveUrl: 'http://templify.demoserver23.com/',
    githubUrl: '',
  ),
  Project(
    imagePath: './assets/image/dashboard.png',
    title: 'Dashboard',
    description:
        'An Admin Dashboard to display Charts and Sales analytics',
    techStacks: ['HTML', 'CSS', 'JavaScript'],
    liveUrl: 'https://devviresh.github.io/Dashborad/',
    githubUrl: 'https://github.com/devviresh/Dashborad',
  ),
];
