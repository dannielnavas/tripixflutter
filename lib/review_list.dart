import 'package:flutter/material.dart';
import 'package:tripix/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    List reviews = [
      {
        'pathImage': 'assets/img/people.jpg',
        'name': 'Danniel navas',
        'details': '1 review 4 photos',
        'comment': 'Is amazing'
      },
      {
        'pathImage': 'assets/img/people.jpg',
        'name': 'Danniel navas',
        'details': '1 review 4 photos',
        'comment': 'Is amazing'
      },
      {
        'pathImage': 'assets/img/people.jpg',
        'name': 'Danniel navas',
        'details': '1 review 4 photos',
        'comment': 'Is amazing'
      }
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (var review in reviews)
          Review(review['pathImage'], review['name'], review['details'],
              review['comment']),
      ],
    );
  }
}
