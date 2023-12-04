// // Define a function that inserts dogs into the database

// import 'dart:async';

// import 'package:itestapp/src/features/dog/domain/Dog.dart';
// import 'package:sqflite/sqflite.dart';

// // Define a function that inserts dogs into the database
// Future<void> insertDog(Dog dog) async {
//   // Get a reference to the database.
//   final db = await database;

//   // Insert the Dog into the correct table. You might also specify the
//   // `conflictAlgorithm` to use in case the same dog is inserted twice.
//   //
//   // In this case, replace any previous data.
//   await db.insert(
//     'dogs',
//     dog.toMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

// // A method that retrieves all the dogs from the dogs table.
// Future<List<Dog>> dogs() async {
//   // Get a reference to the database.
//   final db = await database;

//   // Query the table for all The Dogs.
//   final List<Map<String, dynamic>> maps = await db.query('dogs');

//   // Convert the List<Map<String, dynamic> into a List<Dog>.
//   return List.generate(maps.length, (i) {
//     return Dog(
//       id: maps[i]['id'] as int,
//       name: maps[i]['name'] as String,
//       age: maps[i]['age'] as int,
//     );
//   });
// }

// Future<void> updateDog(Dog dog) async {
//   // Get a reference to the database.
//   final db = await Database;

//   // Update the given Dog.
//   await db.update(
//     'dogs',
//     dog.toMap(),
//     // Ensure that the Dog has a matching id.
//     where: 'id = ?',
//     // Pass the Dog's id as a whereArg to prevent SQL injection.
//     whereArgs: [dog.id],
//   );
// }

// Future<void> deleteDog(int id) async {
//   // Get a reference to the database.
//   final db = await database;

//   // Remove the Dog from the database.
//   await db.delete(
//     'dogs',
//     // Use a `where` clause to delete a specific dog.
//     where: 'id = ?',
//     // Pass the Dog's id as a whereArg to prevent SQL injection.
//     whereArgs: [id],
//   );
// }
