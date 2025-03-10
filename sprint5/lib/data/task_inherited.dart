import 'package:flutter/material.dart';

import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required super.child,
  });

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/flutter.png', 1),
    Task('Aprender Ler', 'assets/images/ler.jpg', 2),
    Task('Aprender Jogar', 'assets/images/jogar.jpg', 3),
    Task('Meditar', 'assets/images/meditar.jpeg', 4),
    Task('Assistir One Piece', 'assets/images/one.jpg', 5),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length; //notifica se o estado anterior é diferente do estado atual f/t
  }
}
