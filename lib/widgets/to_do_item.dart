import 'package:project1/constants/colors.dart';
import 'package:project1/model/todo.dart';
import 'package:flutter/material.dart';

typedef OnToDoChangedType = void Function(ToDo todo);
typedef OnDeleteItemType = void Function(String? id);

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final OnToDoChangedType onToDoChanged;
  final OnDeleteItemType onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
            padding: const EdgeInsets.all(0),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              icon: const Icon(
                Icons.delete,
              ),
              color: Colors.white,
              iconSize: 18,
              onPressed: () {
                onDeleteItem(todo.id);
              },
            )),
      ),
    );
  }
}
