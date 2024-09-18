import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String recommendation;

  RecommendationCard({required this.recommendation});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[50],
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          recommendation,
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }
}
