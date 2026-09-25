
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

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
    )
  ]
  );



}