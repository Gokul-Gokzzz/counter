import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count=0;
  void _incrementCounter(){
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You Have Pushed The Button This Many Times',
            style: TextStyle(fontSize: 20),
          
              ),
              Text('$_count')
          ],
        ),
      ),
    floatingActionButton: FloatingActionButton(onPressed: _incrementCounter , 
    tooltip: "Increment",
    child: Icon(Icons.add),
    ),
    
    );
  }
}