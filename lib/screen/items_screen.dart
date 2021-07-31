import 'package:flutter/material.dart';
// Models files
import '../model/item.dart';
//Widgets files
import '../widget/item_widget.dart';

class ItemsScreen extends StatelessWidget{
  const ItemsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Item> _items =[
      Item(id: '1', title: 'Item 1', price: 15.5, date: DateTime.now()),
      Item(id: '2', title: 'Item 2', price: 32.5, date: DateTime.now()),
      Item(id: '3', title: 'Item 3', price: 1252.4, date: DateTime.now()),
      Item(id: '4', title: 'Item 4', price: 1252.4, date: DateTime.now()),
      Item(id: '5', title: 'Item 5', price: 1252.4, date: DateTime.now()),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expanses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (_ , index) => ItemWidget(
            _items[index].id,
            _items[index].title,
            _items[index].price,
            _items[index].date,
          ),
        ),
      ),
    );
  }
}