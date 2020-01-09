
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapp/sqlite/DatabaseHelper.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  final dbHelper = DatabaseHelper.instance;

//  var todos =  dbHelper.queryAllRows();

  void _query() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) => print(row));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Container(

        child: Container(
//          child: new ListView.builder(
//              itemBuilder: (BuildContext ctx , int index){
//                return new Text(todos[index]);
//              },
//              itemCount: todos.length,
//
//          )
        ),
      )
    );
  }
}
