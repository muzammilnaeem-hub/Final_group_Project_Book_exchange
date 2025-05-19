
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Settings (Demo only)')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.teal,
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Computer Science, Year 3',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildProfileCard(
                    title: 'Account Information',
                    items: [
                      _buildProfileItem(
                        icon: Icons.email,
                        title: 'Email',
                        subtitle: 'john.doe@university.edu',
                      ),
                      _buildProfileItem(
                        icon: Icons.phone,
                        title: 'Phone',
                        subtitle: '(555) 123-4567',
                      ),
                      _buildProfileItem(
                        icon: Icons.school,
                        title: 'University',
                        subtitle: 'State University',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildProfileCard(
                    title: 'Activity',
                    items: [
                      _buildProfileItem(
                        icon: Icons.sell,
                        title: 'Books Listed',
                        subtitle: '2',
                      ),
                      _buildProfileItem(
                        icon: Icons.shopping_bag,
                        title: 'Books Purchased',
                        subtitle: '5',
                      ),
                      _buildProfileItem(
                        icon: Icons.star,
                        title: 'Rating',
                        subtitle: '4.8/5.0',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.logout, color: Colors.red),
                      title: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Log out (Demo only)')),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard({required String title, required List<Widget> items}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ...items,
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal, size: 24),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
