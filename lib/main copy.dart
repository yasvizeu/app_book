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
  TextEditingController ownerController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController publisherController = TextEditingController();

  String infoText = '';


  void save(){
    setState(() {
      String owner = ownerController.text;
      String title = titleController.text;
      String author = titleController.text;
      String publisher = titleController.text;
      infoText = 'O livro "${title}" do(a) autor(a) ${author} foi salvo com sucesso';
    });
  }

  void resetInfo(){
    setState((){
      infoText = '';
      ownerController.text = '';
      titleController.text = '';
      authorController.text = '';
      publisherController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text(
          'Library',
          style: TextStyle(color: Colors.white, fontSize:24),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 72, 0, 85),
          ),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    const SizedBox(height: 25.0),
                    const Icon(Icons.book, size: 50, color: Color.fromARGB(255, 72, 0, 85)),
                    const SizedBox(height: 25.0),
                    const Text(
                      'Welcome to the Library',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255,72,0,85),
                      )
                    ),
                    const SizedBox(height:25.0),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Nome do Dono',
                        prefixIcon: const Icon(Icons.person),
                        prefixIconColor: Color.fromARGB(255, 72, 0, 85),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                    ),
                    const SizedBox (height: 16.0),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Título do Livro',
                        prefixIcon: const Icon(Icons.book),
                        prefixIconColor: Color.fromARGB(255, 72, 0, 85),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          )
                      ),
                    ),

                    const SizedBox(height: 16.0),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Autor',
                        prefixIcon: const Icon(Icons.edit),
                        prefixIconColor: Color.fromARGB(255, 72, 0, 85),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        )
                      ),),
                      const SizedBox(height: 16.0),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Editora',
                          prefixIcon: const Icon(Icons.business),
                          prefixIconColor: Color.fromARGB(255, 72, 0, 85),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                          )
                        )
                      ),

                      const SizedBox(height: 50.0),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          
                          backgroundColor: const Color.fromARGB(255, 72, 0, 85),
                          foregroundColor: Colors.white,
                        ),
                        onPressed:(){},
                        child: SizedBox(
                          height: 55.0,
                          width: 100.0,
                          child: 
                            Text('Salvar Livro', 
                            textAlign: TextAlign.center,
                            ),
                          
                        ), 
                      ),
                ],) ,)
            ),
            ),
      ),
      );
  }
}