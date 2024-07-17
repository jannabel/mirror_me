import 'package:go_router/go_router.dart';
import 'package:talk_to_me/chat/chat.dart';
import 'package:talk_to_me/login/loading_screen.dart';
import 'package:talk_to_me/login/login_screen.dart';

var mainRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/chat', builder: (context, state) => const Chat()),
    GoRoute(
        path: '/loading', builder: (context, state) => const LoadingScreen())
  ],
);
