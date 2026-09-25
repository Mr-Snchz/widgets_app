import 'package:flutter/material.dart';


class CardsScreen extends StatelessWidget {

  static final String name = 'CardsScreen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Screen')
        ),
        body: Placeholder(),
    );
  }
}