import '../models/book.dart';

// Sample data for the app
class SampleData {
  static List<Book> getBooks() {
    return [
      Book(
        id: 1,
        title: "Calculus: Early Transcendentals",
        author: "James Stewart",
        description: "This text is designed for a three-semester or four-quarter calculus course covering single variable and multivariable calculus for mathematics, engineering, and science majors. In good condition with minimal highlighting.",
        price: 45.99,
        condition: "Good",
        coverImage: "https://m.media-amazon.com/images/I/51tjWOXg+8L._SY344_BO1,204,203,200_.jpg",
        seller: "Alex Johnson",
        sellerAvatar: "https://randomuser.me/api/portraits/men/32.jpg",
        department: "Mathematics",
        course: "MATH 101",
        isFavorite: true,
        comments: [
          Comment(
            username: "Maria S.",
            userAvatar: "https://randomuser.me/api/portraits/women/44.jpg",
            text: "Is this the 8th edition? I need that specific one for my class.",
            timeAgo: "2 hours ago",
          ),
          Comment(
            username: "Jake T.",
            userAvatar: "https://randomuser.me/api/portraits/men/46.jpg",
            text: "Does it include the solution manual?",
            timeAgo: "1 day ago",
          ),
        ],
        orders: [
          Order(
            id: 101,
            buyerName: "Emma Wilson",
            buyerAvatar: "https://randomuser.me/api/portraits/women/22.jpg",
            status: "pending",
            timeAgo: "5 hours ago",
          ),
          Order(
            id: 102,
            buyerName: "Michael Brown",
            buyerAvatar: "https://randomuser.me/api/portraits/men/34.jpg",
            status: "pending",
            timeAgo: "1 day ago",
          ),
        ],
      ),
      Book(
        id: 2,
        title: "Introduction to Algorithms",
        author: "Thomas H. Cormen",
        description: "Some widely acclaimed textbook on computer algorithms. Used for one semester, in excellent condition with no markings or highlights.",
        price: 60.00,
        condition: "Like New",
        coverImage: "https://m.media-amazon.com/images/I/41T5iiHC2ML._SX440_BO1,204,203,200_.jpg",
        seller: "Sophia Chen",
        sellerAvatar: "https://randomuser.me/api/portraits/women/33.jpg",
        department: "Computer Science",
        course: "CS 301",
        isFavorite: false,
        comments: [
          Comment(
            username: "David K.",
            userAvatar: "https://randomuser.me/api/portraits/men/67.jpg",
            text: "Would you accept \$50 for it?",
            timeAgo: "3 hours ago",
          ),
        ],
        orders: [],
      ),
      Book(
        id: 3,
        title: "Organic Chemistry",
        author: "Paula Yurkanis Bruice",
        description: "Comprehensive organic chemistry textbook with study guide included. Some highlighting on first few chapters but otherwise in good condition.",
        price: 55.50,
        condition: "Good",
        coverImage: "https://m.media-amazon.com/images/I/51Kepm5QSRL._SX258_BO1,204,203,200_.jpg",
        seller: "Ryan Miller",
        sellerAvatar: "https://randomuser.me/api/portraits/men/55.jpg",
        department: "Chemistry",
        course: "CHEM 240",
        isFavorite: true,
        comments: [],
        orders: [
          Order(
            id: 103,
            buyerName: "Jessica Adams",
            buyerAvatar: "https://randomuser.me/api/portraits/women/65.jpg",
            status: "pending",
            timeAgo: "2 days ago",
          ),
        ],
      ),
      Book(
        id: 4,
        title: "Psychology: The Science of Mind and Behavior",
        author: "Michael Passer",
        description: "Latest edition of this popular psychology textbook. Minimal wear, no markings inside.",
        price: 40.00,
        condition: "Excellent",
        coverImage: "https://m.media-amazon.com/images/I/51Vfq8MRgdL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg",
        seller: "Emily Parker",
        sellerAvatar: "https://randomuser.me/api/portraits/women/12.jpg",
        department: "Psychology",
        course: "PSYC 101",
        isFavorite: false,
        comments: [
          Comment(
            username: "Tyler R.",
            userAvatar: "https://randomuser.me/api/portraits/men/23.jpg",
            text: "Is this the 7th edition?",
            timeAgo: "4 hours ago",
          ),
          Comment(
            username: "Aisha M.",
            userAvatar: "https://randomuser.me/api/portraits/women/36.jpg",
            text: "Does it have the access code for the online materials?",
            timeAgo: "1 day ago",
          ),
        ],
        orders: [],
      ),
      Book(
        id: 5,
        title: "Principles of Economics",
        author: "N. Gregory Mankiw",
        description: "Standard economics textbook used in introductory courses. Some highlighting but all pages intact and in good condition.",
        price: 38.75,
        condition: "Good",
        coverImage: "https://m.media-amazon.com/images/I/51+kCxp+NuL._SX258_BO1,204,203,200_.jpg",
        seller: "James Wilson",
        sellerAvatar: "https://randomuser.me/api/portraits/men/42.jpg",
        department: "Economics",
        course: "ECON 101",
        isFavorite: false,
        comments: [],
        orders: [],
      ),
      Book(
        id: 6,
        title: "Physics for Scientists and Engineers",
        author: "Serway and Jewett",
        description: "Comprehensive physics textbook with all practice problem solutions. Minor wear on cover but interior is clean.",
        price: 52.25,
        condition: "Very Good",
        coverImage: "https://m.media-amazon.com/images/I/51vPCWJuYKL._SX258_BO1,204,203,200_.jpg",
        seller: "Daniel Lee",
        sellerAvatar: "https://randomuser.me/api/portraits/men/11.jpg",
        department: "Physics",
        course: "PHYS 201",
        isFavorite: true,
        comments: [],
        orders: [],
      ),
    ];
  }

  static List<Book> getMyListings() {
    return [
      Book(
        id: 7,
        title: "Database Systems: The Complete Book",
        author: "Hector Garcia-Molina",
        description: "Comprehensive database textbook with all chapters. Used for one semester only.",
        price: 48.50,
        condition: "Excellent",
        coverImage: "https://m.media-amazon.com/images/I/51JtjrqTbFL._SX258_BO1,204,203,200_.jpg",
        seller: "You",
        sellerAvatar: "https://randomuser.me/api/portraits/men/1.jpg",
        department: "Computer Science",
        course: "CS 345",
        isFavorite: false,
        comments: [
          Comment(
            username: "Lisa T.",
            userAvatar: "https://randomuser.me/api/portraits/women/22.jpg",
            text: "Is this the international edition?",
            timeAgo: "1 day ago",
          ),
        ],
        orders: [
          Order(
            id: 104,
            buyerName: "John Smith",
            buyerAvatar: "https://randomuser.me/api/portraits/men/22.jpg",
            status: "pending",
            timeAgo: "3 hours ago",
          ),
          Order(
            id: 105,
            buyerName: "Sarah Johnson",
            buyerAvatar: "https://randomuser.me/api/portraits/women/28.jpg",
            status: "pending",
            timeAgo: "1 day ago",
          ),
        ],
      ),
      Book(
        id: 8,
        title: "Artificial Intelligence: A Modern Approach",
        author: "Stuart Russell & Peter Norvig",
        description: "The leading textbook in Artificial Intelligence. Some highlighting in first few chapters.",
        price: 65.00,
        condition: "Good",
        coverImage: "https://m.media-amazon.com/images/I/51xYYJvVCxL._SX258_BO1,204,203,200_.jpg",
        seller: "You",
        sellerAvatar: "https://randomuser.me/api/portraits/men/1.jpg",
        department: "Computer Science",
        course: "CS 440",
        isFavorite: false,
        comments: [],
        orders: [],
      ),
    ];
  }

  static List<Book> getFavorites() {
    List<Book> allBooks = getBooks();
    return allBooks.where((book) => book.isFavorite).toList();
  }
}
