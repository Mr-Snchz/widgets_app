
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title; 
  final String caption;
  final String imageURL;

  SlideInfo({
  required this.title, 
  required this.caption, 
  required this.imageURL});

  
}


final listSlide = <SlideInfo> [
  SlideInfo(title: 'Busca la comida', caption: 'Este es un texto de introduccion sobre una aplicacin delevire', imageURL: 'assets/Images/1.png'),
  SlideInfo(title: 'Entrega la comida ', caption: 'Este es un texto que explica que lo importante es entregar la comida en una aplicacion delevire', imageURL: 'assets/Images/2.png'),
  SlideInfo(title: 'Disfruta la comida ', caption: 'Esta es una entrega exitosa donde todo lo que funciona funciona ', imageURL: 'assets/Images/3.png')
];



class AppTutorialScreen extends StatefulWidget {



  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}
  
class _AppTutorialScreenState extends State<AppTutorialScreen> {

     final PageController pageViewController = PageController(); 
     bool endPageView = false;
 
  @override
  void initState() {
    super.initState();
    
    pageViewController.addListener( () {
        final page = pageViewController.page ?? 0; 

        if( !endPageView && page >= (listSlide.length - 1.7)){
          setState(() {
            endPageView = true;
          });
        }
      }
    );

  }


  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          PageView(
            controller: pageViewController,
            physics: BouncingScrollPhysics(),
            children: listSlide.map((slideCardInfo)=> _SlideInfoViewer(
              title: slideCardInfo.title, 
              caption: slideCardInfo.caption, 
              imageUrl: slideCardInfo.imageURL) 
            ).toList()
          ),

          Positioned(
            right: 20,
            top: 60,
            child: TextButton(
              onPressed: () {
                context.pop();
              }, 
              child: Text('Skipe')
            )
          ),

          endPageView ? Positioned(
            bottom: 50,
            right: 20,
            child: FadeInRight(
              from: 15,
              delay: Duration(seconds: 1),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: Text('Comenzar')
              ),
            )
          ): SizedBox()


        ],
      ),
    );
  }
}

class _SlideInfoViewer extends StatelessWidget {
  final String title;
  final String caption; 
  final String imageUrl; 

  const _SlideInfoViewer({
   required this.title, 
   required this.caption,
   required this.imageUrl}
  );


  @override
  Widget build(BuildContext context) {
    
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Image(image: AssetImage(imageUrl)),
            SizedBox(height: 20),
            Text(title, style: titleStyle),
            SizedBox(height: 20),
            Text(caption, style: captionStyle)

          ],
        ),
      ),
    );
  }
}