class Skill {
  final String logoPath;
  final String name;
  final String description;
  final String url;

  Skill(
      {required this.logoPath,
      required this.name,
      required this.description,
      required this.url});
}

final List<Skill> skills = [
  Skill(
    logoPath: './assets/svg/html.svg',
    name: 'Html',
    description:
        'Essential for structuring web content, HTML uses tags to define elements on pages, providing the foundation for online information display.',
    url: '   kmlkn',
  ),
  Skill(
      logoPath: './assets/svg/css.svg',
      name: 'Css',
      description:
          'Cascading Style Sheets, CSS, enriches web pages by applying styles and layouts, enhancing the visual presentation of HTML-based content.',
      url: ''),
  Skill(
      logoPath: './assets/svg/javascript.svg',
      name: 'JavaScript',
      description:
          'JavaScript, a versatile scripting language, adds interactivity to web pages, enabling dynamic and engaging user experiences within the browser environment.',
      url: ''),
  Skill(
      logoPath: './assets/svg/flutter.svg',
      name: 'Flutter',
      description:
          'Flutter, a UI toolkit by Google, facilitates cross-platform app development, enabling the creation of natively compiled applications for mobile, web, and desktop.',
      url: ''),
  Skill(
      logoPath: './assets/svg/python.svg',
      name: 'Python',
      description:
          'Python, a versatile and readable programming language, serves various domains, from web development to data science, with a focus on simplicity and efficiency.',
      url: ''),
  Skill(
      logoPath: './assets/svg/firebase.svg',
      name: 'Firebase',
      description:
          'Firebase, a platform by Google, streamlines mobile and web app development, offering a suite of backend services such as authentication, database, and hosting.',
      url: ''),
  Skill(
      logoPath: './assets/svg/aws.svg',
      name: 'AWS',
      description:
          'Amazon Web Services (AWS), a comprehensive cloud computing platform, provides a wide array of scalable and reliable services for diverse computing needs.',
      url: ''),
  Skill(
      logoPath: './assets/svg/material-ui.svg',
      name: 'Material UI',
      description:
          'Material UI, a set of React components, implements Google\'s Material Design, enhancing web applications with a consistent and visually appealing user interface.',
      url: ''),
  Skill(
      logoPath: './assets/svg/react.svg',
      name: 'ReactJS',
      description:
          'ReactJS, a JavaScript library, simplifies the creation of interactive user interfaces, allowing developers to efficiently build and manage complex UIs.',
      url: ''),
  Skill(
      logoPath: './assets/svg/tailwind.svg',
      name: 'Tailwind CSS',
      description:
          'Tailwind CSS, a utility-first CSS framework, accelerates web development by providing pre-defined classes for building modern and responsive user interfaces.',
      url: ''),
  Skill(
      logoPath: './assets/svg/nodejs.svg',
      name: 'NodeJS',
      description:
          'NodeJS, a JavaScript runtime, empowers server-side development, allowing developers to use JavaScript for building scalable and efficient network applications.',
      url: ''),
  Skill(
      logoPath: './assets/svg/mongodb.svg',
      name: 'MongoDB',
      description:
          'MongoDB, a NoSQL database, stores data in flexible, JSON-like documents, making it suitable for dynamic and evolving application requirements.',
      url: ''),
];
