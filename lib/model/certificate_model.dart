class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Developer',
    organization: 'Devs inn Technologies ',
    date: 'Augest-2023',
    skills: 'Flutter, Dart',
    credential:  'https://drive.google.com/file/d/1R1riwsyGUnoW20sTXG2fHs7hBfUZzvd2/view?usp=sharing',
  ),
  CertificateModel(
    name: 'MERN STACK Developer',
    organization: 'IDEOVERCITY',
    date: 'Nov-2023',
    skills: 'HTML5, CSS, BootStrap, Rect js, Node js, Express js, MongoDB',
    credential:  'https://drive.google.com/file/d/132mtUnuQRwHKqJ7p6PrgBmzrSlOAbKbJ/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Flutter Developer Intern',
    organization: 'Devs inn Technologies',
    date: 'Augest-2023',
    skills: 'Flutter, Firebase, Provider, GetX, MVC, MVVM, Github, Clean Architecture',
    credential:  'https://drive.google.com/file/d/1b2D9akASje545Y7goeqGH1PuuCCevfzV/view?usp=sharing',
  ),

  CertificateModel(
    name: 'Flutter Developer Intern',
    organization: 'Zoom IT Solutions',
    date: 'Jun-2024',
    skills: 'Flutter, Firebase, Provider, GetX, MVC, MVVM, Github, Clean Architecture',
    credential:  'https://drive.google.com/file/d/1AlfF-ic3LTjXfrGpPXQF4sUX2UMcl0Gp/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Persuasive Communication',
    organization: 'Hi Tech Lubricant',
    date: 'Jun-5th-2024',
    skills: 'Flutter, Dart, Firebase, API\'s',
    credential:  'https://drive.google.com/file/d/1dPQzzDWWAwjqC7ctYLb5I6dtalxPd9Dz/view?usp=sharing',
  ),
];
