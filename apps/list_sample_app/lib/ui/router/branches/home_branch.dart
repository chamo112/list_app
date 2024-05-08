import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:list_app/ui/router/branches/branch_type.dart';
import 'package:list_app/ui/router/utils/route_path_name.dart';

const homeBranch = TypedStatefulShellBranch<SummaryBranch>(
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<HomeRoute>(
      path: '/${RoutePathName.home}',
    ),
  ],
);

final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();

class SummaryBranch extends StatefulShellBranchData {
  const SummaryBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = _homeNavigatorKey;
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              BranchType.home.label,
            )
          ]),
        ),
      );
}
