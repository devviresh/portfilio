class TimeLineData {
  final String imagePath;
  final String title;
  final String company;
  final String location;
  final String period;
  final String? achievement;
  final WorkType workType;

  TimeLineData(
      {required this.imagePath,
      required this.title,
      required this.company,
      required this.location,
      required this.period,
      required this.workType,
      this.achievement});
}

enum WorkType { work, education }

final List<TimeLineData> timelines = [
  TimeLineData(
      imagePath: './assets/image/bit01.jpg',
      title: 'Junior Software Engineer',
      company: 'Bit01 Techplode Private Limited',
      location: 'Ahmedabad, Gujarat, IN',
      period: ' Jun 2023 - Nov 2023',
      workType: WorkType.work),
  TimeLineData(
      imagePath: './assets/image/bcet.png',
      title: 'B.Tech - CSE',
      company: 'Bengal College of Engineering and Technology',
      location: 'Durgapur, West Bengal, IN',
      period: ' Aug 2019 - Jul 2023',
      achievement: '', //cgpa - 9.1/10
      workType: WorkType.education),
  TimeLineData(
      imagePath: './assets/image/coc.png',
      title: 'High School - PCM',
      company: 'College of Commerce, Arts & Science',
      location: 'Patna, Bihar, IN',
      period: ' Apr 2016 - jun 2018',
      workType: WorkType.education),
  // TimeLineData(
  //     imagePath: './assets/image/coc.png',
  //     title: 'Matriculation',
  //     company: 'FNS Academy, Gulzarbagh',
  //     location: 'Patna, Bihar, IN',
  //     period: ' Mar 2015 - Mar 2016',
  //     workType: WorkType.education),
];
