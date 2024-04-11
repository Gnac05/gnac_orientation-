import 'dart:convert';

class User {
  final String id;
  final String pseudo;
  final String? picture;
  final String? firstName;
  final String? secondName;
  final String classe;
  final Map<String, String> notes;
  final List<String> fillieres;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.classe,
    required this.fillieres,
    this.firstName,
    required this.id,
    required this.notes,
    required this.pseudo,
    this.secondName,
    this.picture,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'classe': classe,
      'fillieres': json.encode(fillieres),
      if(picture!=null) 'picture': picture,
      if (firstName != null) 'first_name': firstName,
      'notes': json.encode(notes),
      'pseudo': pseudo,
      if (secondName != null) 'second_name': secondName,
      'created_at': createdAt.millisecondsSinceEpoch,
      'updated_at': updatedAt.microsecondsSinceEpoch,
    };
  }

  static User fromMap(Map<String, dynamic> map) => User(
        classe: map['classe'],
        fillieres: json.decode(map['fillieres']),
        id: map['id'],
        notes: json.decode(map['notes']),
        pseudo: map['pseudo'],
        firstName: map['first_name'],
        secondName: map['second_name'],
        createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at']),
        updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updated_at']),
      );
}
