class Book {
  final int id;
  final String title;
  final String author;
  final String description;
  final double price;
  final String condition;
  final String coverImage;
  final String seller;
  final String sellerAvatar;
  final String department;
  final String course;
  final bool isFavorite;
  final List<Comment> comments;
  final List<Order> orders;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.price,
    required this.condition,
    required this.coverImage,
    required this.seller,
    required this.sellerAvatar,
    required this.department,
    required this.course,
    this.isFavorite = false,
    required this.comments,
    required this.orders,
  });
}

class Comment {
  final String username;
  final String userAvatar;
  final String text;
  final String timeAgo;

  Comment({
    required this.username,
    required this.userAvatar,
    required this.text,
    required this.timeAgo,
  });
}

class Order {
  final int id;
  final String buyerName;
  final String buyerAvatar;
  final String status; // "pending", "accepted", "rejected"
  final String timeAgo;

  Order({
    required this.id,
    required this.buyerName,
    required this.buyerAvatar,
    required this.status,
    required this.timeAgo,
  });
}
