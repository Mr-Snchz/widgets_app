import 'package:flutter/material.dart' ;

class MenuItem {

  final String title; 
  final String subtitle; 
  final String link; 
  final IconData icon; 

  const MenuItem({ 
  required this.title, 
  required this.subtitle, 
  required this.link, 
  required this.icon
  }); 
  
}

const appMenuItems = <MenuItem>[
  MenuItem(
  title: 'Botones', 
  subtitle: 'Varios Botones Flutter', 
  link: '/buttons', 
  icon: Icons.smart_button_outlined
  ),

  MenuItem(
  title: 'Tarjetas', 
  subtitle: 'Un contenedor estilizado', 
  link: '/cards', 
  icon: Icons.credit_card
  ),

  MenuItem(
  title: 'Progress Indicator', 
  subtitle: 'Barra de progreso ', 
  link: '/progress_screen', 
  icon: Icons.refresh_rounded, 
  ),

  MenuItem(
  title: 'Snackbar y Dialogos', 
  subtitle: 'Indicadores en pantalla', 
  link: '/snackbar_screen', 
  icon: Icons.info_outline_rounded, 
  ),

  MenuItem(
    title: 'Animated Screen', 
    subtitle: 'Cuadro Animado ', 
    link: '/animated_Screen', 
    icon: Icons.play_arrow_outlined
    ),

  MenuItem(
    title: 'Ui Controls Screen', 
    subtitle: 'Muchos controles juntos ', 
    link: '/ui_controls_screen', 
    icon: Icons.play_circle_outlined
    ),
  
  MenuItem(
    title: 'Tutorial', 
    subtitle: 'Nos muestra como funciona la aplicacion', 
    link: '/tutorial_screen', 
    icon: Icons.accessibility_new_rounded
  )

];