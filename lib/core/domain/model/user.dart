import 'dart:convert';

class User {
  final int id;
  final String pseudo;
  final String? picture;
  final String? firstName;
  final String? secondName;
  final String? classe;
  final Map<String, String>? notes;
  final List<String>? fillieres;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
     this.classe,
     this.fillieres,
    this.firstName,
    required this.id,
     this.notes,
    required this.pseudo,
    this.secondName,
    this.picture,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      if(classe!=null)'classe': classe,
      if(fillieres!=null)'fillieres': json.encode(fillieres),
      if(picture!=null) 'picture': picture,
      if (firstName != null) 'first_name': firstName,
      if(notes!=null)'notes': json.encode(notes),
      'pseudo': pseudo,
      if (secondName != null) 'second_name': secondName,
      'created_at': createdAt.millisecondsSinceEpoch,
      'updated_at': updatedAt.microsecondsSinceEpoch,
    };
  }

  static User fromMap(Map<String, dynamic> map) => User(
        classe: map['classe'],
        fillieres:(map['fillieres']!=null)? json.decode(map['fillieres']) : null,
        id: map['id'],
        notes:(map['notes']!=null)? json.decode(map['notes']) : null,
        pseudo: map['pseudo'],
        firstName: map['first_name'],
        secondName: map['second_name'],
        createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at']),
        updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updated_at']),
      );
}
