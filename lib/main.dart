import 'package:flutter/material.dart';

void main() {
  runApp(const BookPage());
}

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Book Page'),
        ),
        body: const Center(
          child: Text('Welcome to the Book Page!'),
        ),
      ),
    );
  }
}