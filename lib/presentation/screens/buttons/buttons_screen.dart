import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ButtonsScreen extends StatelessWidget {

  static final String name = 'ButtonsScreen';
  

   const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen')
        
        ),
        body: _ButtonViews(),
        floatingActionButton: IconButton(
          onPressed: (){ 
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded)
        ),
    );
  }
}

class _ButtonViews extends StatelessWidget {
  const new( );

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Boton elevado')),
            ElevatedButton(onPressed: null , child: Text('Boton elevado')),
            ElevatedButton.icon(onPressed: () {},  label: Text('Boton elevado'), icon: Icon(Icons.alarm_add_outlined)),

            FilledButton(onPressed: () { }, child: Text('Filled')),
            FilledButton.icon(onPressed: () {}, label: Text('Filled'), icon: Icon(Icons.accessibility),),

            OutlinedButton(onPressed: () {}, child: Text('Outline')),
            OutlinedButton.icon(onPressed: () {}, label: Text('Outline'), icon: Icon(Icons.account_box_rounded)),
            TextButton(onPressed: () {} , child: Text('Text')),
            TextButton.icon(onPressed: () {}, label: Text('Text Icon'), icon: Icon(Icons.youtube_searched_for)),
            IconButton(onPressed: () {}, icon: Icon(Icons.app_registration_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.app_registration_rounded) , style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(colors.primary)), )
          ],
        ),
      ),
    );
  }
}