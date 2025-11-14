class Book {
  final int? idBook;
  final String owner;
  final String title;
  final String author;
  final String publisher;



Book({
  this.idBook,
  required this.owner,
  required this.title,
  required this.author,
  required this.publisher,
});

factory Book.fromJson(Map<String, dynamic> json){
  return Book(
    idBook: json['idBook'],
    owner: json['owner'],
    title: json['title'],
    author: json['author'],
    publisher: json['publisher'],
  );
}

Map<String, dynamic> toJson(){
  return {
    "idBook": idBook,
    "owner": owner,
    "title": title,
    "author": author,
    "publisher": publisher,
  };
}
}