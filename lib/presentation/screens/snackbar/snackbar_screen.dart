import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar ( BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();


    final snackbar = SnackBar(
        content: Text('Este es un snackbar '),
        action: SnackBarAction(label: 'Undo', onPressed: () {}),
        duration: Duration(seconds: 2)
      );
    
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar y Dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
         label: Text('Menu de dialogo'),
         icon: Icon(Icons.remove_red_eye_sharp),

      ),
    );
  }
}