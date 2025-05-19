
import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../models/book.dart';
import '../widgets/book_section.dart';
import 'book_details_screen.dart';


class MyListingsScreen extends StatefulWidget {
  @override
  _MyListingsScreenState createState() => _MyListingsScreenState();
}

class _MyListingsScreenState extends State<MyListingsScreen> {
  late List<Book> myBooks;

  @override
  void initState() {
    super.initState();
    myBooks = SampleData.getMyListings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Listings'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Would navigate to add listing screen
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Add new listing (Demo only)')),
              );
            },
          ),
        ],
      ),
      body: myBooks.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.book_outlined,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No books listed yet',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text('Add a Book'),
                    onPressed: () {
                      // Would navigate to add listing screen
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Add new listing (Demo only)')),
                      );
                    },
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: myBooks.length,
              itemBuilder: (context, index) {
                final book = myBooks[index];
                return BookCard(
                  book: book,
                  showOrderCount: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetailsScreen(book: book),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
