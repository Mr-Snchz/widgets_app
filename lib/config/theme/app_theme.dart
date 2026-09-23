

import 'package:flutter/material.dart';


const colorList = <Color>[
  Colors.black,
  Colors.blue,
  Colors.red,
  Colors.amber,
  Colors.green, 
  Colors.purple
];

class AppTheme {
  
  final int selectColor ;

  AppTheme({
    required this.selectColor
  }): assert(selectColor >= 0 , 'El color seleccionado es menor a 0 '),
      assert( selectColor <= colorList.length - 1, 'El color seleccionado es mayor a el numero del arreglo'); 

  ThemeData getThemeData () => ThemeData(
    colorSchemeSeed: colorList[selectColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    )
  );


}