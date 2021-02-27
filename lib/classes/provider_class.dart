import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class Data extends ChangeNotifier{
  List<Task> _tasksList = [
    Task(name: 'first task', isDone: false),
    Task(name: 'second task', isDone: false),
    Task(name: 'third task', isDone: false),
  ];

  UnmodifiableListView get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  int get countList{
    return _tasksList.length;
  }
  void changeList(String title){
    _tasksList.add(Task(name: title));
    notifyListeners();
  }

  void changeIndexBool(Task task){

    task.toggleDone();
    notifyListeners();
  }

  void removeTask(int index){
    _tasksList.removeAt(index);
    notifyListeners();
  }

}