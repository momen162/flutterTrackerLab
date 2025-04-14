import 'package:flutter/material.dart';

class Problem_10 extends StatefulWidget {
  const Problem_10({super.key});

  @override
  State<Problem_10> createState() => _Problem10State();
}

class _Problem10State extends State<Problem_10> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeTab(),
    const SearchTab(),
    const ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_10'),
        backgroundColor: Colors.indigo,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('Home'),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.home, size: 80, color: Colors.indigo),
          const SizedBox(height: 20),
          const Text(
            'Welcome to the Home Tab!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Image.network('https://via.placeholder.com/300x150'),
        ],
      ),
    );
  }
}

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('Search'),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.search, size: 80, color: Colors.orange),
          SizedBox(height: 20),
          Text(
            'Search for content here.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('Profile'),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          SizedBox(height: 20),
          Text(
            'User Name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'user@example.com',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
