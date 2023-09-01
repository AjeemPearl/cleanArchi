
part of "router_imports.dart";


@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter{
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  // TODO: implement routes
  List<AutoRoute> get routes =>[
    AutoRoute(page: SplashRoute.page, path: "/", initial: true),
    AutoRoute(page: OnBoardRoute.page),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: DashBoardRoute.page),
    AutoRoute(page: SqlScreenRoute.page),
    AutoRoute(page: VoiceAIRoute.page)



  ];

}