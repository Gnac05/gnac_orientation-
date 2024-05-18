import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/domain/model/user.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as mypath;

class UserDatabase {
  static Database? _database;
  static final UserDatabase instance = UserDatabase._privateConstructor();

  UserDatabase._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final String path = await getDatabasesPath();
    return openDatabase(
      mypath.join(path, 'user_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE users(id INT PRIMARY KEY, pseudo TEXT NOT NULL, first_name TEXT, second_name TEXT, classe TEXT, careers TEXT, notes TEXT, created_at INTEGER, updated_at INTEGER)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertUser(User user) async {
    final Database db = await instance.database;
    return await db.insert('users', user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<User>> getUsers() async {
    final Database db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query('users');
    return List.generate(maps.length, (i) {
      return User.fromMap(maps[i]);
    });
  }

  Future<User?> getUser(int id) async {
    final Database db = await instance.database;
    try {
      List<Map<String, dynamic>> maps = await db.query('users',
          columns: [
            'id',
            'pseudo',
            'first_name',
            'second_name',
            'classe',
            'careers',
            'notes',
            'created_at',
            'updated_at'
          ],
          where: 'id = ?',
          whereArgs: [id]);
      if (maps.isNotEmpty) {
        return User.fromMap(maps.first);
      }
    } catch (e) {
      debugPrint("Error : $e");
    }
    return null;
  }

  Future<void> updateUser(User user) async {
    final Database db = await instance.database;
    await db.update(
      'users',
      user.toMap(),
      where: "id = ?",
      whereArgs: [user.id],
    );
  }

  Future<void> deleteUser(int id) async {
    final Database db = await instance.database;
    await db.delete(
      'users',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
