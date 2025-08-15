import 'package:hive/hive.dart';

class ToDoDataBase {
  // ref
  final _mybox = Hive.box("mybox");

  //list
  List toDoList = [];

  void createDataBase() {
    toDoList = [
      ['task 1', true],
      ['task 2', false],
      ['task 3', true],
      ['task 4', true],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST") ?? [];
  }

  void updataData() {
    _mybox.put("TODOLIST", toDoList);
  }
}
