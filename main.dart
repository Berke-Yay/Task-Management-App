import 'package:flutter/material.dart';
import 'package:untitled/allTasks.dart';
import 'package:untitled/taskDetail.dart';
import 'package:untitled/taskprinter.dart';
import 'home.dart';
import 'addTask.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/home",
    routes:{
      "/alltasks": (context)=>allTasks(tasks: [],),
      "/home": (context)=> HomePage(tasks: [],),
      "/addtask": (context)=>addTask(tasks: [],),
      "/taskprinter": (context)=>TaskPrinter(title: "", description: "",),
      "/taskdetail": (context)=>taskDetail(tasks: [], index:0),
    },
  ));
}
