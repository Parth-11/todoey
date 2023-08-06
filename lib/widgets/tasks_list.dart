import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/model/task.dart';

class TasksLists extends StatefulWidget {
  const TasksLists(this.tasks);
  final List<Task> tasks;

  @override
  State<TasksLists> createState() => _TasksListsState();
}

class _TasksListsState extends State<TasksLists> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool? newValue) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
