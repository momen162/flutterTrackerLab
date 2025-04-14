import 'package:flutter/material.dart';

class Problem_7 extends StatelessWidget {
  const Problem_7({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/160',
      'https://via.placeholder.com/170',
      'https://via.placeholder.com/180',
      'https://via.placeholder.com/190',
      'https://via.placeholder.com/200',
      'https://via.placeholder.com/210',
      'https://via.placeholder.com/220',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_7'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
