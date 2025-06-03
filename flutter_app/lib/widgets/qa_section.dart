import 'package:flutter/material.dart';

class QASection extends StatelessWidget {
  final String question;
  final String answer;
  final List<String> subPoints;

  const QASection({
    required this.question,
    required this.answer,
    this.subPoints = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Q) $question',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'A) $answer',
              style: TextStyle(fontSize: 16),
            ),
            ...subPoints.map((point) => Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Text('○ $point'),
            )),
          ],
        ),
      ),
    );
  }
}
