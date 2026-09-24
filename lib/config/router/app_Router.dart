
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class AppRouter {

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: ((context, state) {
        return HomeScreen();
      })
    ),
    GoRoute(
      path: '/buttons',
      builder: ((context, state) {
        return ButtonsScreen();
      })
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) {
        return CardsScreen();
      }
    )
  ]
  );



}