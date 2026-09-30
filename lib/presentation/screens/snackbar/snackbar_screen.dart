import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  void openDialog(BuildContext context ){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context )=>AlertDialog(
        title: Text('Cuandro de dialgo '),
        content: Text('Esto es un cuadro de dialogo para que funcione correctamente como todo esta funcionando lo que esto parece es que esta funcionando correctamente por lo que no parece que funciona de maravillla'),
        actions: [
          TextButton(onPressed: () {
            context.pop();
          }, child: Text('Cancelar')),
          FilledButton(onPressed: () {
            context.pop();
          }, child: Text('Aceptar'))
        ],
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  applicationName: 'Homes Screen',
                  context: context,
                  children: [
                    Text('Hola Mundo')
                  ]
                  
                );
              }, 
              child: Text('Licencias usadas')
            ),

            FilledButton(
              onPressed: ()=> openDialog(context),
              child: Text('Mostrar Dialogo'))
          ],
          
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
         label: Text('Menu de dialogo'),
         icon: Icon(Icons.remove_red_eye_sharp),

      ),
    );
  }
}