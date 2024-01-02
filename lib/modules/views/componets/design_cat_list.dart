import 'package:flutter/material.dart';

class DesignCatList extends StatelessWidget {
  final String title;
  final String img;
  const DesignCatList({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                img,
                height: 70, // Adjust the height as needed
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(width: 20),
              Divider(
                height: 3,
                color: Colors.black.withOpacity(0.600),
                thickness: 2,
              ), // Add some spacing between image and text
              const SizedBox(height: 10),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
