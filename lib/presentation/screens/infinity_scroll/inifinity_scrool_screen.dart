import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InifinityScroolScreen extends StatefulWidget {

  static const name = 'infinity_scrool_screen';
  const InifinityScroolScreen({super.key});

  @override
  State<InifinityScroolScreen> createState() => _InifinityScroolScreenState();
}

class _InifinityScroolScreenState extends State<InifinityScroolScreen> {

  final list = [1,2,3,4,5,6,7,8,9];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context, 
        child: ListView.builder(
          itemCount: list.length,

          itemBuilder: (context , index ){
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: AssetImage('assets/Images/jar-loading.gif'), 
              image: NetworkImage('https://picsum.photos/id/${list[index]}/500/300'),
            );
          }
          )
        ),

      floatingActionButton: FilledButton(
        onPressed: () => context.pop(), 
        child: Icon(Icons.arrow_back_ios_new_rounded),),
    );
  }
}