class Sector {
  final String name;
  final String school;
  final String university;
  final double moyenne;
  final int nbBourse;
  final int nbSecour;
  final List<String> metiers;

  Sector({
    required this.name,
    required this.school,
    required this.university,
    required this.moyenne,
    required this.nbBourse,
    required this.nbSecour,
    required this.metiers,
  });

  Map<String, dynamic> toMap() => {
    'name': name,
    'school': school,
    'university': university,
    'moyenne': moyenne,
    'nbBourse': nbBourse,
    'nbSecour': nbSecour,
    'metiers': metiers,
  };

}
