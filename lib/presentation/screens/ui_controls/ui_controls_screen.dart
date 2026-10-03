import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ui Controls screen '),
      ),

      body:  

      _UiControlsView()
     
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const new();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {car , plane , boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true; 
  bool breakfast = false; 
  bool lunch = false; 
  bool dinner = false; 

  Transportation selectedTransportation = Transportation.car; 

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

         SwitchListTile(
        title: Text('Menu de Desarrollo'),
        subtitle: Text('Muestra varias opciones a demas de las que ya se tienen '),
        value: isDeveloper, 
        onChanged: (bool value) {
          isDeveloper = !isDeveloper;
          setState(() {
            
          });
        }
        ), 

        ExpansionTile(
          title: Text('Vehiculo de Transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            

            RadioListTile(
              title: Text('By Car'),
              subtitle: const  Text('Viajar en carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.car; 
                });
              } 
            ),

            RadioListTile(
              title: Text('By Boar'),
              subtitle: const  Text('Viajar en bote'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.boat; 
                });
              } 
            ),

            RadioListTile(
              title: Text('By Avion'),
              subtitle: const  Text('Viajar en avion'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.plane; 
                });
              } 
            ),

            RadioListTile(
              title: Text('By Submarine'),
              subtitle: const  Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.submarine; 
                });
              } 
            )

          ],
        ),
      
        CheckboxListTile(
          title: Text('¿Quieres desayunar?'),
          value: breakfast, 
          onChanged: (value) => setState(() { 
            breakfast = !breakfast; 
            }),
          ),
        
        CheckboxListTile(
          title: Text('¿Quieres almorzar? '),
          value: lunch, 
          onChanged: (value)=> setState(() {
            lunch = !lunch; 
          }),
        ),
        
        CheckboxListTile(
          title: Text('¿Quieres cenar?'),
          value: dinner, 
          onChanged: (value) => setState(() {
            dinner = !dinner; 
          }),
        )
      ],

      
    );
  }
}