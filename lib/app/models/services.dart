class Service {
  final String path;
  final String name;
  final String about;

  Service({required this.path, required this.name, required this.about});
}

final List<Service> services = [
  Service(
      path: './assets/gif/web.json',
      name: 'Web Development',
      about: 'Get your E-commerce website running built with the MERN stack.'),
  Service(
      path: './assets/gif/app.json',
      name: 'App Development',
      about:
          'Turn your idea into reality with a Mobile App build with Flutter.'),
  Service(
      path: './assets/gif/blog.json',
      name: 'Tech Blogging',
      about:
          'Get regular insightful and engaging tech blog posts for your website.')
];
