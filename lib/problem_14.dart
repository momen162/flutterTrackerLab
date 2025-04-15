import 'package:flutter/material.dart';

class Problem_14 extends StatefulWidget {
  const Problem_14({super.key});

  @override
  State<Problem_14> createState() => _Problem_14State();
}

class _Problem_14State extends State<Problem_14> {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void _editItem(int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Edit tapped on ${items[index]}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_14'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            secondaryBackground: Container(
              color: Colors.blue,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.edit, color: Colors.white),
            ),
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.startToEnd) {
                _deleteItem(index);
                return true;
              } else {
                _editItem(index);
                return false;
              }
            },
            child: ListTile(
              title: Text(items[index]),
              tileColor: Colors.grey[200],
            ),
          );
        },
      ),
    );
  }
}
