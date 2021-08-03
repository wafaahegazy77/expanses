import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemWidget extends StatelessWidget {
  final String id, title;
  final double price;
  final DateTime date;
  final Function removeItem;
  const  ItemWidget(
    this.id ,
    this.title ,
    this.price ,
    this.date ,
    this.removeItem,{
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  8.0),
      child: Card(
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).accentColor,
            child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                )
            ),
            radius: 30.0,
          ),
          title: Text('$title'),
          subtitle: Text('${DateFormat.yMMMEd().format(date)}'),
          trailing: IconButton(
            onPressed: (){
              removeItem(id);
            },
            icon: Icon(Icons.delete),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

