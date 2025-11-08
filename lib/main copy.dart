import 'package:flutter/material.dart';

void main(){
  runApp(const BookPage());
}

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Library', 
          style: TextStyle(color: Colors.white, fontSize: 24),),
          centerTitle: true,
          backgroundColor: const  Color.fromARGB(255, 72, 0, 85)
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 25.0,),
            Center(
              child: Icon(Icons.book, size: 50, color: Color.fromARGB(255, 72, 0, 85),),
            ),
            SizedBox(height: 25.0,),
            // Center(
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       hintText: 'Search Books',
            //       prefixIcon: Icon(Icons.search),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(8.0),
            //       ),
            //     ),
            //   ),
          //)
          Center(
            child: Text(
              'Welcome to the Library',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 72, 0, 85),
              ),
            ),
          ),
          SizedBox(height: 25.0,),
          Center(child:Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Pessoa 1',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),),),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Pessoa 2',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),
          )),
          )))],)
        )
      ),
    );
  }
}
