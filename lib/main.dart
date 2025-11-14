import 'package:flutter/material.dart';

void main() {
  runApp(const BookPage());
}

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Library',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 72, 0, 85),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 25.0),
                  const Icon(Icons.book, size: 50, color: Color.fromARGB(255, 72, 0, 85)),
                  const SizedBox(height: 25.0),
                  const Text(
                    'Welcome to the Library',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 72, 0, 85),
                    ),
                  ),
                  const SizedBox(height: 25.0),

                  // Campos do formulário
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Nome do Dono',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Título do Livro',
                      prefixIcon: const Icon(Icons.book),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Autor',
                      prefixIcon: const Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Editora',
                      prefixIcon: const Icon(Icons.business),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 72, 0, 85),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // aqui você vai salvar o livro depois
                      }
                    },
                    child: const Text('Salvar Livro'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}