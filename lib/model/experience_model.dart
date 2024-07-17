class ExperienceModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;
  final String description;

  ExperienceModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
    required this.description,
  });
}

List<ExperienceModel> experienceList = [
  ExperienceModel(
    description:'As a FLutter Developer, I developed mobile applications for Hi Tech Lubricant using Flutter and Firebase and API\'s integration. The application is used to manage the sales and distribution of the company. The application is integrated with the company\'s API and Firebase for real-time data synchronization.',
    name: 'Flutter Developer',
    organization: 'Hi Tech Lubricant',
    date: 'Feb-2024 to Present',
    skills: 'Flutter, Firebase, Dart, MVC, MVVM, API\'s, Provider, GETX, Git',
    credential:  'https://drive.google.com/file/d/1R1riwsyGUnoW20sTXG2fHs7hBfUZzvd2/view?usp=sharing',
  ),
  ExperienceModel(
     description:'As a Flutter Developer Intern, I developed mobile applications for Zoom IT Solutions using Flutter and Firebase. I developed the application using the GetX state management library and followed the MVC and MVVM architecture pattern. ',
    name: 'Flutter Developer Intern',
    organization: 'Zoom IT Solutions',
    date: 'Sep-2023 to Jun-2024',
    skills: 'Flutter, Firebase, Dart, MVC, MVVM, API\'s, Provider, GETX, Git',
    credential:  'https://drive.google.com/file/d/1AlfF-ic3LTjXfrGpPXQF4sUX2UMcl0Gp/view?usp=sharing',
  ),
  ExperienceModel(
     description:'As a Flutter Developer Intern, I developed mobile applications for Devs inn Technologies using Flutter and Dart. I developed the application using the GetX state management library and followed the MVC architecture pattern. ',
    name: 'Flutter Developer Intern',
    organization: 'Devs inn Technologies',
    date: 'July-2023 to Sep-2023',
    skills: 'Flutter, Firebase, Provider, GetX, MVC, MVVM, Github, Clean Architecture',
    credential:  'https://drive.google.com/file/d/1b2D9akASje545Y7goeqGH1PuuCCevfzV/view?usp=sharing',
  ),
];
