import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Problem_19(),
  ));
}

class Problem_19 extends StatefulWidget {
  const Problem_19({super.key});

  @override
  State<Problem_19> createState() => _Problem_19State();
}

class _Problem_19State extends State<Problem_19>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  void _toggleDrawer() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildDrawer() {
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        width: 250,
        color: Colors.blueGrey.shade800,
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Home', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 20),
            Text('Profile', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 20),
            Text('Settings', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 20),
            Text('Logout', style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text('Problem_19: Custom Drawer'),
            backgroundColor: Colors.teal,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: _toggleDrawer,
            ),
          ),
          body: const Center(
            child: Text('Main Content Here'),
          ),
        ),
        buildDrawer(),
      ],
    );
  }
}
