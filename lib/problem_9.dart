import 'package:flutter/material.dart';

class Problem_9 extends StatelessWidget {
  const Problem_9({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CardItem> items = [
      CardItem(
        imageUrl: 'https://via.placeholder.com/150',
        title: 'Card Title 1',
        subtitle: 'Subtitle 1',
        description: 'This is a brief description of item 1.',
      ),
      CardItem(
        imageUrl: 'https://via.placeholder.com/150/0000FF',
        title: 'Card Title 2',
        subtitle: 'Subtitle 2',
        description: 'This is a brief description of item 2.',
      ),
      CardItem(
        imageUrl: 'https://via.placeholder.com/150/FF0000',
        title: 'Card Title 3',
        subtitle: 'Subtitle 3',
        description: 'This is a brief description of item 3.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_9'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomAnimatedCard(item: items[index]);
        },
      ),
    );
  }
}

class CardItem {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;

  CardItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
  });
}

class CustomAnimatedCard extends StatefulWidget {
  final CardItem item;

  const CustomAnimatedCard({super.key, required this.item});

  @override
  State<CustomAnimatedCard> createState() => _CustomAnimatedCardState();
}

class _CustomAnimatedCardState extends State<CustomAnimatedCard> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isTapped = true),
      onTapUp: (_) => setState(() => _isTapped = false),
      onTapCancel: () => setState(() => _isTapped = false),
      child: AnimatedScale(
        scale: _isTapped ? 0.98 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  widget.item.imageUrl,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.item.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(widget.item.subtitle,
                        style: const TextStyle(fontSize: 14, color: Colors.grey)),
                    const SizedBox(height: 8),
                    Text(widget.item.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
