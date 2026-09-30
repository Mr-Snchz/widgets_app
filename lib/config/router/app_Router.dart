
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';
import 'package:widgets_app/presentation/screens/snackbar/snackbar_screen.dart';

class AppRouter {

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: ((context, state) {
        return HomeScreen();
      })
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: ((context, state) {
        return ButtonsScreen();
      })
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) {
        return CardsScreen();
      }
    ),
    GoRoute(
      path: '/progress_screen',
      name: ProgressScreen.name,
      builder: (context, state) {
        return ProgressScreen();
      }
    ),

    GoRoute(
      path: '/snackbar_screen',
      name: SnackbarScreen.name,
      builder: (context, state) {
        return SnackbarScreen();
      }
    ),


  ]
  );



}