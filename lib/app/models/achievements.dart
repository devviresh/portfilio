class Achievement {
  final String? title;
  final String description;
  final String link;

  Achievement({this.title, required this.description, required this.link});
}

final List<Achievement> achievements = [
  Achievement(
      description:
          "Solved 400+ DSA problems, 1700+ Contest rating on LeetCode.",
      link: 'https://leetcode.com/viresh_dev'),
  Achievement(
      description: '5 Star Problem Solving and Python on HackerRank.',
      link: 'https://www.hackerrank.com/profile/vireshdev5e'),
  Achievement(
      description:
          "Cleared the Advantage Round of Infosys Certification program (InfyTQ 2022).",
      link: ''),
  Achievement(
      description:
          "Achieved 3rd rank among 10000+ participants in Fullstack Development Contest on NextLevel App.",
      link: ''),
  Achievement(
      description:
          "Secured All India Rank 1891 in GATE 2022 over 75000+ students.",
      link:
          'https://drive.google.com/file/d/1mBeXdVsMhVBCzeK5OHjNabQgBBaaAXgm/view'),
  Achievement(
      description:
          "Ranked 79th among 12741 students in Code 360 Weekly Contest 120 on Apr 4, 2024.",
      link: 'https://www.naukri.com/code360/contests/weekly-contest-120'),
];
