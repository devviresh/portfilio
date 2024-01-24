class Social {
  final String url;
  final String icon;

  Social({required this.url, required this.icon});
}

final List<Social> socials = [
  Social(
    url: 'https://github.com/devviresh',
    icon: './assets/svg/git.svg',
  ),
  Social(
    url: 'https://www.instagram.com/devviresh/',
    icon: './assets/svg/ig.svg',
  ),
  Social(
    url: 'https://linkedin.com/in/viresh-dev',
    icon: './assets/svg/ln.svg',
  ),
  Social(
    url: 'https://twitter.com/dev_viresh',
    icon: './assets/svg/x.svg',
  ),
  Social(
    url: '',
    icon: './assets/svg/fb.svg',
  ),
];