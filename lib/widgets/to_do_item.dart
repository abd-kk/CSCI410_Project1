import 'package:flutter/material.dart';
import "../model/todo.dart";

class ToDoItem extends StatelessWidget {
  const ToDoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
      margin: const EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        onTap: () {},
        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: Colors.purple[400]),
        title: Text(
          "Buy Coffe",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.red[500], borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
