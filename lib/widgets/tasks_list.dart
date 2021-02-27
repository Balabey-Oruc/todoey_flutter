import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/classes/provider_class.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = data.tasksList[index];
            return FlatButton(
              onPressed: null,
              onLongPress: (){
                data.removeTask(index);
              },
              child: ListTiles(
                titleName: task.name,
                isChecked: task.isDone,
                calledBackFunction: (checkboxState) {
                  data.changeIndexBool(task);
                },
              ),
            );
          },
          itemCount: Provider.of<Data>(context).tasksList.length,
        );
      },
    );
  }
}
