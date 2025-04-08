import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Todolist(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Todolist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('To-Do-List',
         style: TextStyle(
          color: const Color.fromARGB(255, 245, 244, 247),
          fontSize: 22,
          fontWeight: FontWeight.bold,),
      ),
        backgroundColor: const Color.fromARGB(255, 238, 49, 2),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Digite algo',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          
        ],
        )
      )
     
    );
  }
}