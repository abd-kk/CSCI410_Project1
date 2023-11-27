import "package:flutter/material.dart";
import '../widgets/to_do_item.dart';
import "../model/todo.dart";

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text("To Do App"),
        )),
        body: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                margin: const EdgeInsets.only(bottom: 70),
                child: Column(
                  children: [
                    searchBox(),
                    Expanded(
                        child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 50, bottom: 20),
                          child: const Text('Tasks',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        for (ToDo todo in todosList) ToDoItem(),
                      ],
                    )),
                  ],
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0)
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _todoController,
                      decoration: const InputDecoration(
                        hintText: "Add a new Task: ",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[400],
                    ),
                    child: const Text(
                      "+",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                )
              ]),
            )
          ],
        ));
  }

  Container searchBox() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(children: [
        Icon(Icons.search, color: Colors.black, size: 30),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                border: InputBorder.none,
                hintText: 'Add a task',
                hintStyle: TextStyle(
                  color: Colors.grey,
                )),
          ),
        ),
      ]),
    );
  }
}
