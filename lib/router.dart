import 'package:go_router/go_router.dart';
import 'package:project_app/favorites/favorites.dart';
import 'package:project_app/home/home_screen.dart';
import 'package:project_app/login/login_screen.dart';
import 'package:project_app/recomendations/recomendations.dart';
import 'package:project_app/register/register_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),

    GoRoute(path: '/favorites', builder: (context, state) => FavoritesScreen()),
    GoRoute(
      path: '/recommendations',
      builder: (context, state) => RecommendationsScreen(),
    ),
    GoRoute(
      path: '/registration',
      builder: (context, state) => RegisterScreen(),
    ),
  ],
);