import 'package:flutter_book_list/models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    Book(
        title: '쉽고 빠른 플러터 앱개발',
        subTitle: '플러터 개발',
        description: 'Go Flutter Development',
        image: 'https://image.yes24.com/goods/109020524/XL'),
    Book(
        title: '플러터 생존 코딩',
        subTitle: '플러터 개발2',
        description: 'Go Flutter Development2',
        image: 'https://image.yes24.com/goods/101819249/XL'),
    Book(
        title: '객체지향의 사실과 오해',
        subTitle: '객체지향 알아보기',
        description: 'Go Object Oriented Programming',
        image: 'https://image.yes24.com/goods/8249021/XL'),
    Book(
        title: '토비의 스프링 3.1',
        subTitle: '스프링 알아보기',
        description: 'Go Spring',
        image: 'https://image.yes24.com/goods/7516721/XL'),
  ];

  List<Book> getBooks() {
    return _dummyBooks;
  }
}