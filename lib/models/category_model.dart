import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String imageUrl;
  const Category({
    required this.imageUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [imageUrl];

  static List<Category> categories = [
    const Category(
        imageUrl:
            'https://img.freepik.com/free-vector/delicious-digital-horizontal-restaurant-menu_52683-45144.jpg?w=2000'),
    const Category(
        imageUrl:
            'https://img.freepik.com/free-vector/orange-restaurant-menu-digital-platform-horizontal-format_23-2148651775.jpg?w=2000')
  ];
}
