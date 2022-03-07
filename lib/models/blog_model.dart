import 'package:tailor_chai_mobile_app/models/author_model.dart';

class Blog {
  String imageUrl;
  String name;
  Author author;
  bool liked;
  String created_at;
  String content;

  Blog({
    required this.imageUrl,
    required this.name,
    required this.author,
    required this.liked,
    required this.created_at,
    required this.content,
  });
}

final List<Blog> blogs = [
  Blog(
      imageUrl: 'assets/images/blog1.jpg',
      name: 'VACATION TRY-ON HAUL',
      author: mike,
      liked: true,
      created_at: "56 min ago",
      content:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32'),
  Blog(
      imageUrl: 'assets/images/blog2.jpg',
      name: 'SPRING DRESS TRY-ON HAUL',
      author: sam,
      liked: true,
      created_at: "2 days ago",
      content:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32'),
  Blog(
      imageUrl: 'assets/images/blog3.jpg',
      name: '3 PANTS TRENDS TO TRY THIS SEASON',
      author: john,
      liked: false,
      created_at: "1 week ago",
      content:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32')
];
