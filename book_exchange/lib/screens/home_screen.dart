import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../models/book.dart';
import '../widgets/book_section.dart';
import 'book_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Book> books;
  String searchQuery = '';
  String selectedDepartment = 'All Departments';

  @override
  void initState() {
    super.initState();
    books = SampleData.getBooks();
  }

  List<Book> get filteredBooks {
    return books.where((book) {
      final matchesSearch = book.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
          book.author.toLowerCase().contains(searchQuery.toLowerCase());
      
      final matchesDepartment = selectedDepartment == 'All Departments' || 
          book.department == selectedDepartment;
      
      return matchesSearch && matchesDepartment;
    }).toList();
  }

  List<String> get departments {
    final depts = books.map((book) => book.department).toSet().toList();
    return ['All Departments', ...depts];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UniBooks Exchange'),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search books...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                  ),
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                ),
                SizedBox(height: 12),
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: departments.map((dept) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ChoiceChip(
                          label: Text(dept),
                          selected: selectedDepartment == dept,
                          onSelected: (selected) {
                            if (selected) {
                              setState(() {
                                selectedDepartment = dept;
                              });
                            }
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredBooks.isEmpty
                ? Center(child: Text('No books found'))
                : ListView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: filteredBooks.length,
                    itemBuilder: (context, index) {
                      final book = filteredBooks[index];
                      return BookCard(
                        book: book,
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
          ),
        ],
      ),
    );
  }
}
