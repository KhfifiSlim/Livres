import 'package:flutter/material.dart';
import 'ListBook.dart';

import 'BookDetailPage.dart';



class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  itemCount: books.length,
  itemBuilder: (BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailPage(book: books[index]),
          ),
        );
      },
      child: ListTile(
        leading: Image.network(
          books[index].imageUrl,
          width: 50,
          height: 50,
        ),
        title: Text(books[index].title),
        subtitle: Text(books[index].author),
      ),
    );
  },
);

  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Book List',
      home: Scaffold(
        appBar: AppBar(title: Text('Book List')),
        body: BookList(),
      ),
    ),
  );
}