import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InifinityScroolScreen extends StatefulWidget {

  static const name = 'infinity_scrool_screen';
  const InifinityScroolScreen({super.key});

  @override
  State<InifinityScroolScreen> createState() => _InifinityScroolScreenState();
}

class _InifinityScroolScreenState extends State<InifinityScroolScreen> {

  final list = [1,2,3,4,5];
  ScrollController pageViewController = ScrollController();
  bool isLoading = false; 
  bool isMounted = true;


  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {

      if( (pageViewController.position.pixels + 500) >=  pageViewController.position.maxScrollExtent ){
        loadNextPage();
      }


    });  
  }

  @override
  void dispose() {
    pageViewController.dispose();
    isMounted = false; 
    super.dispose();
  }


  Future loadNextPage() async {
    if(isLoading) return; 
    isLoading = true;
    setState(() {});

    await Future.delayed( Duration(seconds: 2));

    addFiveImage(); 
    isLoading = false; 

    if(!isMounted) return;
    setState(() {});
  }



  void addFiveImage () {

    list.addAll( 
      [1,2,3,4,5].map( (e) => e + list.last)

    ); 
  }


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
          controller: pageViewController,
          itemBuilder: (context , index ){
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: AssetImage('assets/Images/jar-loading.gif'), 
              image: NetworkImage('https://picsum.photos/id/${list[index]}/500/300' ) ,
            );
          }
          )
        ),

      floatingActionButton: FilledButton(
        onPressed: () => context.pop(), 
        child:  (isLoading) 
                ?  SpinPerfect(infinite: true, child: Icon(Icons.refresh_rounded))
                : FadeIn(child: Icon(Icons.arrow_back_ios_new_rounded))
              ),
    );
  }
}