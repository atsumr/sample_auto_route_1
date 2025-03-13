import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'app_router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRouterRoute.page,
          fullscreenDialog: true,
          children: [
            AutoRoute(
              initial: true,
              path: 'home',
              page: HomeRoute.page,
              fullscreenDialog: true,
            ),
            AutoRoute(
              path: 'mypage',
              page: MypageRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/regsiter_login',
          page: SelectLoginRegisterRouterRoute.page,
          fullscreenDialog: true,
          children: [
            AutoRoute(
              initial: true,
              path: 'select_login_register',
              page: SelectLoginRegisterRoute.page,
              fullscreenDialog: true,
            ),
            AutoRoute(
              path: 'login',
              page: LoginRoute.page,
            ),
          ],
        ),
      ];
}

@RoutePage()
class HomeRouterPage extends AutoRouter {
  const HomeRouterPage({super.key});
}

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Column(children: [
        ElevatedButton(
          onPressed: () => context.router.push(const MypageRoute()),
          child: const Text('Mypage'),
        ),
        ElevatedButton(
          onPressed: () => context.router.navigate(
              SelectLoginRegisterRouterRoute(
                  children: [SelectLoginRegisterRoute()])),
          child: const Text('Login/Register'),
        ),
      ]),
    );
  }
}

@RoutePage()
class MypagePage extends StatelessWidget {
  const MypagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Page'),
      ),
      body: ElevatedButton(
        onPressed: () => context.router.navigate(SelectLoginRegisterRouterRoute(
            children: [SelectLoginRegisterRoute()])),
        child: const Text('Login/Register'),
      ),
    );
  }
}

@RoutePage()
class SelectLoginRegisterRouterPage extends AutoRouter {
  const SelectLoginRegisterRouterPage({super.key});
}

@RoutePage()
class SelectLoginRegisterPage extends StatelessWidget {
  const SelectLoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        centerTitle: true,
        title: const Text('Login/Register'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.router.back(),
            child: const Text('Back'), // Back to the home or mypage
          ),
          ElevatedButton(
            onPressed: () => context.router.push(const LoginRoute()),
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: ElevatedButton(
        onPressed: () {
          // Login process
          context.router
              .maybePopTop(); // I want to return to the home or mypage
        },
        child: const Text('Login and Return'),
      ),
    );
  }
}
