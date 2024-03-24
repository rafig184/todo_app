import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do exercise", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
