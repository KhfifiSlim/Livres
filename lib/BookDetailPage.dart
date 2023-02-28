import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Book.dart';

class BookDetailPage extends StatelessWidget {
  final Book book;
  

  BookDetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              book.imageUrl,
              width: 400,
              height: 300,
            ),
            SizedBox(height: 16),
            Text(
              book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
           SizedBox(height: 8),
            Text(
              book.author,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              book.description,
              style: TextStyle(fontSize: 16),
            ),
             ElevatedButton(
  onPressed: () {},
  child: const Text('Passer Commande'),
),

          ],
        ),
      ),
    );
  }
}