import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _items = [];

  void _addItem() {
    setState(() {
      _items.insert(0, 'New Item ${_items.length.toString()}');
      _listKey.currentState?.insertItem(0);
    });
  }

  void _removeItem(int index) {
    setState(() {
      String removedItem = _items[index];
      _items.removeAt(index);
      _listKey.currentState?.removeItem(
        index,
        (context, animation) => ListTile(
          title: Text(removedItem),
          textColor: Colors.deepOrange,
        )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List Example"),
      ),
      body: AnimatedList(
        key: _listKey,
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed:(){ _removeItem(index);},
                ),
                title: Text(_items[index])),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
