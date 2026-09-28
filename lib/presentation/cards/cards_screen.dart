import 'dart:ffi';

import 'package:flutter/material.dart';


 const cards = <Map<String , dynamic>>[
  {'elevation' : 0.0 , 'label': 'Elevation 0'} ,
  {'elevation' : 1.0 , 'label': 'Elevation 1'} ,
  {'elevation' : 2.0 , 'label': 'Elevation 2'} ,
  {'elevation' : 3.0 , 'label': 'Elevation 3'} ,
  {'elevation' : 4.0 , 'label': 'Elevation 4'} ,
  {'elevation' : 5.0 , 'label': 'Elevation 5'} ,

 ];

class CardsScreen extends StatelessWidget {

  static final String name = 'CardsScreen';

 

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Screen')
        ),
        body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          ...cards.map( ( card) => 
            CardsType1(
              label: card['label'], 
              elevation: card['elevation']
            )
          ),

          ...cards.map( ( card) => 
            CardsType2(
              label: card['label'], 
              elevation: card['elevation']
            )
          ),

          ...cards.map( ( card) => 
            CardsType3(
              label: card['label'], 
              elevation: card['elevation']
            )
          ),

          ...cards.map( ( card) => 
            CardsType4(
              label: card['label'], 
              elevation: card['elevation']
            )
          ),

          const SizedBox( height: 50)
          
        ],
      
        
      
      ),
    );
  }
}


class CardsType1  extends StatelessWidget {
  final String label;
  final double elevation;
  const CardsType1 ({
    super.key, 
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 10), 
          
          child: Column(
            textDirection: TextDirection.ltr,
            children: [
              
              Align(
                alignment: AlignmentGeometry.topRight,
                child:  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
              ),
              
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(label),
              )
            ]
          )
        )
      );   
  }

}


class CardsType2  extends StatelessWidget {
  final String label;
  final double elevation;
  const CardsType2 ({
    super.key, 
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
        shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.all( Radius.circular(12)),
          side: BorderSide(
            color: colors.outline, 
          )
          ),
        elevation: elevation,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 10), 
          
          child: Column(
            textDirection: TextDirection.ltr,
            children: [
              
              Align(
                alignment: AlignmentGeometry.topRight,
                child:  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
              ),
              
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text('$label - outline '),
              )

            ]
            
          )
        )
      );   
  }

}


class CardsType3  extends StatelessWidget {
  final String label;
  final double elevation;
  const CardsType3 ({
    super.key, 
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme; 

    return Card(
        color: color.surfaceContainerHighest,
        elevation: elevation,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 10), 
          
          child: Column(
            textDirection: TextDirection.ltr,
            children: [
              
              Align(
                alignment: AlignmentGeometry.topRight,
                child:  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
              ),
              
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text('$label - fill '),
              )
            ]
          )
        )
      );   
  }

}


class CardsType4  extends StatelessWidget {
  final String label;
  final double elevation;
  const CardsType4 ({
    super.key, 
    required this.label, 
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    return Card(
        clipBehavior: Clip.hardEdge,
        elevation: elevation,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: [
        
            Image.network(
             'https://picsum.photos/id/${ elevation.toInt() }/600/350',
             height: 350,
             fit: BoxFit.cover,
            
            ),
            
            Align(
              alignment: AlignmentGeometry.topRight,
              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
                ),
                child: IconButton(
                  onPressed: () {},
                   icon: Icon(
                    Icons.more_vert_outlined)
                  )
                ),
            )
          ]
        )
      );   
  }

}





