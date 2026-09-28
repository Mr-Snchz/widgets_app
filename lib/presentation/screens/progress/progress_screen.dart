import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicator'),
      ),
      body: _ProgressView(),

    );
  }
}

class _ProgressView extends StatelessWidget {

  const _ProgressView ();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('Progress Indicator'),
          SizedBox(height: 20),
          CircularProgressIndicator(strokeWidth: 2,backgroundColor: Colors.amber),
          SizedBox(height: 20),
          Text('Circular indicator controlado '),
          SizedBox(height: 20),
          _ControllerProgressIndicator()

        ],
      )
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}