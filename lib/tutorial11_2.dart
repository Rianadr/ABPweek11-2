import 'package:flutter/material.dart';

class page_tutorial11_2 extends StatefulWidget {
  const page_tutorial11_2({Key? key}) : super(key: key);

  @override
  _page_tutorial11_2State createState() => _page_tutorial11_2State();
}

class _page_tutorial11_2State extends State<page_tutorial11_2> {
  final List<String> _data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 11-2'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_data[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    String newData = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Your Email'),
          content: TextField(
            onChanged: (value) {
              newData = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter data',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _data.add(newData);
                });
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}