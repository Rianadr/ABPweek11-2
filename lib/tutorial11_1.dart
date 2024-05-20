import 'package:flutter/material.dart';

class page_tutorial11_1 extends StatelessWidget {
  const page_tutorial11_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial 11-1'),
        automaticallyImplyLeading: true, // Remove the default back arrow
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.blue[500],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Tutorial 11-1',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the home page
                  },
                  child: const Text('Go to Home page'),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Page 2',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Page 3',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}