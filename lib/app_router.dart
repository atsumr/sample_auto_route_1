import 'package:auto_route/auto_route.dart';

import 'main.dart';

part 'app_router.gr.dart';

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
