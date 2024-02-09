class Profile {
  final String url;
  final String icon;

  Profile({required this.url, required this.icon});
}

final List<Profile> profiles = [
  Profile(
    url: 'https://github.com/devviresh',
    icon: './assets/svg/git.svg',
  ),
  Profile(
    url: 'https://www.codechef.com/users/viresh_dev',
    icon: './assets/svg/codechef.svg',
  ),
  Profile(
    url: 'https://www.leetcode.com/viresh_dev',
    icon: './assets/svg/leetcode.svg',
  ),
  Profile(
    url: 'https://www.hackerrank.com/vireshdev5e',
    icon: './assets/svg/hackerrank.svg',
  ),
];
